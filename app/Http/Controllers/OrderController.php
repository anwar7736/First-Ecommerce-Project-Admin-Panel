<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\{Order, OrderLine, OrderPayment};
use DB;
class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $order = Order::with('lines', 'lines.product')->find($id);
        $order->transaction_date = date_format($order->created_at, 'd F, Y');
        return $order;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function edit(Order $order)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Order $order)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function destroy(Order $order)
    {
        //
    }

    public function orderList($user_id)
    {
        $orders = Order::with(['user', 'lines'])->where('user_id', $user_id)->latest()->get();
        // dd($orders);
        $orders->map(function($order){
             $order->transaction_date = date_format($order->created_at, 'd F, Y');
             return $order;
        });

        return $orders;
    }

    public function checkout(Request $request)
    {

        try{
            DB::beginTransaction();
            $data = [];
            $total_amount = 0;
            $total_discount = 0;
            foreach(json_decode($request->cart) as $cart)
            {
                $total_amount += $cart->total_price;
                $data[] = [
                    'productlist_id' => $cart->id,
                    'price' => $cart->price,
                    'size' => $cart->size,
                    'color' => $cart->color,
                    'quantity' => $cart->quantity,
                    'discount' => 0,
                ];
            }

            $order = Order::create([
                'user_id' => $request->user_id,
                'invoice_no' => rand(11111111, 99999999),
                'name' => $request->name,
                'phone' => $request->phone,
                'address' => $request->address,
                'total_amount' => $total_amount,
                'total_discount' => $total_discount,
                'delivery_charge' => $request->charge,
                'final_amount' => ($total_amount + $request->charge) - $total_discount,
                'payment_method' => $request->method,
            ]);

            if(!empty($data) && $order)
            {
                $order->lines()->createMany($data);
            }

            DB::commit();
            return $order->id;
        }
        catch(\Exception $e)
        {
            DB::rollback();
            return 0;
        }
    }
}
