<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Util\BkashCredential;
use Illuminate\Http\Request;
use Session;
use Illuminate\Support\Str;
use App\Models\OrderPayment;
use App\Models\Order;

class CheckoutURLController extends Controller
{
    private $base_url;

    public function __construct()
    {
        $this->base_url = 'https://tokenized.sandbox.bka.sh/v1.2.0-beta';
        //$this->base_url = 'https://tokenized.pay.bka.sh/v1.2.0-beta';
    }

    public function authHeaders(){
        return array(
            'Content-Type:application/json',
            'Authorization:' .Session::get('bkash_token'),
            'X-APP-Key:'.env('BKASH_CHECKOUT_URL_APP_KEY')
        );
    }
         
    public function curlWithBody($url,$header,$method,$body_data_json){
        $curl = curl_init($this->base_url.$url);
        curl_setopt($curl,CURLOPT_HTTPHEADER, $header);
        curl_setopt($curl,CURLOPT_CUSTOMREQUEST, $method);
        curl_setopt($curl,CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl,CURLOPT_POSTFIELDS, $body_data_json);
        curl_setopt($curl,CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($curl, CURLOPT_IPRESOLVE, CURL_IPRESOLVE_V4);
        $response = curl_exec($curl);
        curl_close($curl);
        return $response;
    }

    public function grant()
    {
        $header = array(
                'Content-Type:application/json',
                'username:'.env('BKASH_CHECKOUT_URL_USER_NAME'),
                'password:'.env('BKASH_CHECKOUT_URL_PASSWORD')
                );
        $header_data_json=json_encode($header);

        $body_data = array('app_key'=> env('BKASH_CHECKOUT_URL_APP_KEY'), 'app_secret'=>env('BKASH_CHECKOUT_URL_APP_SECRET'));
        $body_data_json=json_encode($body_data);

        $response = $this->curlWithBody('/tokenized/checkout/token/grant',$header,'POST',$body_data_json);

        $token = json_decode($response)->id_token;

        return $token;
    }

    public function pay(Request $request)
    {
        $order = Order::find($request->order_id);
        $amount = $order->final_amount;
        $this->resetPaymentSession();
        Session::put('payment_amount', $amount);
        Session::put('invoice_no', $order->invoice_no);        
        Session::put('user_id', $order->user_id);        
        Session::put('order_id', $order->id);
        return view('CheckoutURL.pay');
    }

    public function create(Request $request)
    {     
        Session::forget('bkash_token');
        $token = $this->grant();
        Session::put('bkash_token', $token);

        $header =$this->authHeaders();

        $body_data = array(
            'mode' => '0011',
            'payerReference' => ' ',
            'callbackURL' => 'http://127.0.0.1:8000/bkash/checkout-url/callback',
            'amount' => Session::get('payment_amount'),
            'currency' => 'BDT',
            'intent' => 'sale',
            'merchantInvoiceNumber' => Session::get('invoice_no')
        );
        $body_data_json=json_encode($body_data);

        $response = $this->curlWithBody('/tokenized/checkout/create',$header,'POST',$body_data_json);
        
        Session::forget('paymentID');
        Session::put('paymentID', json_decode($response)->paymentID);

        return redirect((json_decode($response)->bkashURL));
    }

    public function execute($paymentID)
    {

        $header =$this->authHeaders();

        $body_data = array(
            'paymentID' => $paymentID
        );
        $body_data_json=json_encode($body_data);

        $response = $this->curlWithBody('/tokenized/checkout/execute',$header,'POST',$body_data_json);
        return $response;
    }

    public function query($paymentID)
    {

        $header =$this->authHeaders();

        $body_data = array(
            'paymentID' => $paymentID,
        );
        $body_data_json=json_encode($body_data);

        $response = $this->curlWithBody('/tokenized/checkout/payment/status',$header,'POST',$body_data_json);
        return $response;
    }

    public function callback(Request $request)
    {
        $allRequest = $request->all();
        if(isset($allRequest['status']) && $allRequest['status'] == 'failure'){
            return view('CheckoutURL.fail')->with([
                'response' => 'Payment Failure'
            ]);

        }else if(isset($allRequest['status']) && $allRequest['status'] == 'cancel'){
            return view('CheckoutURL.fail')->with([
                'response' => 'Payment Cancell'
            ]);

        }else{
            
            $response = $this->execute($allRequest['paymentID']);

            $arr = json_decode($response,true);
    
            if(array_key_exists("statusCode",$arr) && $arr['statusCode'] != '0000'){
                return view('CheckoutURL.fail')->with([
                    'statusMessage' => $arr['statusMessage'],
                ]);
            }else if(array_key_exists("message",$arr)){
                // if execute api failed to response
                sleep(1);
                $queryResponse = $this->query($allRequest['paymentID']);
                $payment = OrderPayment::create([
                    'user_id' => Session::get('user_id'),
                    'order_id' => Session::get('order_id'),
                    'amount' => Session::get('payment_amount'),
                    'transaction_id' => Session::get('paymentID'),
                    'payment_id' => Session::get('paymentID')
                ]);

                if($payment)
                {
                    Order::where('id', Session::get('order_id'))->update([
                        'payment_status' => 'paid'
                    ]);
                }

                $this->resetPaymentSession();
                return view('CheckoutURL.success')->with([
                    'response' => $queryResponse
                ]);
            }
            
            $this->resetPaymentSession();
            return view('CheckoutURL.success')->with([
                'response' => $response
            ]);

        }

    }
 
    public function getRefund(Request $request)
    {
        return view('CheckoutURL.refund');
    }

    public function refund(Request $request)
    {
        Session::forget('bkash_token');
        $token = $this->grant();
        Session::put('bkash_token', $token);

        $header =$this->authHeaders();

        $body_data = array(
            'paymentID' => $request->paymentID,
            'amount' => $request->amount,
            'trxID' => $request->trxID,
            'sku' => 'sku',
            'reason' => 'Quality issue'
        );
     
        $body_data_json=json_encode($body_data);

        $response = $this->curlWithBody('/tokenized/checkout/payment/refund',$header,'POST',$body_data_json);
        // your database operation
        return view('CheckoutURL.refund')->with([
            'response' => $response,
        ]);
    }

    
    public function getRefundStatus(Request $request)
    {
        return view('CheckoutURL.refund-status');
    }

    public function refundStatus(Request $request)
    {     
        Session::forget('bkash_token');  
        $token = $this->grant();
        Session::put('bkash_token', $token);

        $header =$this->authHeaders();

        $body_data = array(
            'paymentID' => $request->paymentID,
            'trxID' => $request->trxID,
        );
        $body_data_json = json_encode($body_data);

        $response = $this->curlWithBody('/tokenized/checkout/payment/refund',$header,'POST',$body_data_json);
                
        return view('CheckoutURL.refund-status')->with([
            'response' => $response,
        ]);
    }

    function resetPaymentSession(){
        Session::forget('payment_amount');
        Session::forget('invoice_no');
        Session::forget('user_id');
        Session::forget('order_id');
    }
    
}
