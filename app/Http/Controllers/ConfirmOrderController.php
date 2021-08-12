<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\OrderModel;
use App\Models\CartModel;

class ConfirmOrderController extends Controller
{
    function PlaceUserOrder(Request $request)
    {
        $user_id            = $request->user_id;
        $customer_city      = $request->customer_city;
        $payment_method     = $request->payment_method;
        $delivery_charge    = $request->delivery_charge ;
        $customer_name      = $request->customer_name;
        $customer_mobile    = $request->customer_mobile;
        $customer_address   = $request->customer_address;

        $cartList = CartModel::where('user_id', $user_id)->get();
        $insertDeleteStatus;

        foreach($cartList as $cart)
        {
            $insert = OrderModel::insert([
                    'user_id' => $user_id,
                    'product_code' => $cart['product_code'],
                    'product_name' => $cart['product_name'],
                    'product_image' => $cart['product_image'],
                    'product_color' => $cart['product_color'],
                    'product_size' => $cart['product_size'],
                    'unit_price'    => $cart['unit_price'],
                    'product_quantity' => $cart['product_quantity'],
                    'total_price' => $cart['total_price'],
                    'shop_name' => $cart['shop_name'],
                    'shop_code' => $cart['shop_code'],
                    'customer_city' => $customer_city,
                    'payment_method' => $payment_method,
                    'delivery_charge' => $delivery_charge,
                    'customer_name' => $customer_name,
                    'customer_mobile' => $customer_mobile,
                    'customer_address' => $customer_address,
                    'order_status' => 'Pending',
                    
            ]);

            if($insert==1)
            {
                $delete = CartModel::where('id', $cart['id'])->delete();

                if($delete==1)
                {
                    $insertDeleteStatus = 1;
                }
                else
                {
                    $insertDeleteStatus = 0;
                }
            }
        } 
        return $insertDeleteStatus;
    }
    function GetOrderDetails(Request $request)
    {
        $user_id = $request->user_id;

        $result = OrderModel::where('user_id', $user_id)->orderBy('id', 'desc')->get();
        return $result;
    }
}
