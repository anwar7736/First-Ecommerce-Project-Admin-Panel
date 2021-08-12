<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CartModel;
use App\Models\ProductListModel;


class CartController extends Controller
{
    function AddToCart(Request $request)
    {
        $user_id = $request->user_id;
        $product_code = $request->product_code;
        $product_color = $request->product_color;
        $product_size = $request->product_size;
        $product_quantity = $request->product_quantity;

        $cartList = CartModel::where([
                   'user_id' => $user_id,
                   'product_code' => $product_code,
                   'product_color' => $product_color,
                   'product_size' => $product_size
        ])->get();

        if(count($cartList) > 0)
        {
            $newQuantity = $cartList[0]['product_quantity'] + $product_quantity;
            $totalPrice = $cartList[0]['unit_price'] * $newQuantity;

            $result = CartModel::where([
                    'user_id'=> $user_id, 
                    'product_code' => $product_code,
                    'product_color' => $product_color,
                    'product_size' => $product_size,
                    ])
                   ->update([
                     'product_quantity' => $newQuantity,
                     'total_price' => $totalPrice,
                    ]);

            return $result;
        }

        else
        {
            $productDetails = ProductListModel::where('code', $product_code)->get();
            $special_price = $productDetails[0]['special_price'];
            $price = $productDetails[0]['price'];

            if($special_price!=='NA')
            {
                $total_price = $special_price * $product_quantity;
                $unit_price = $special_price;
            }
            else
            {
                $total_price = $price * $product_quantity;
                $unit_price = $price;
            }

            $result = CartModel::insert([
                    'user_id' => $user_id,
                    'product_code' => $product_code,
                    'product_name' => $productDetails[0]['name'],
                    'product_image' =>$productDetails[0]['image'],
                    'product_color' =>$product_color,
                    'product_size' =>$product_size,
                    'unit_price' =>$unit_price,
                    'product_quantity' =>$product_quantity,
                    'total_price' =>$total_price,
                    'shop_name' => $productDetails[0]['shop_name'],
                    'shop_code' =>$productDetails[0]['shop'],
                    ]);
            return $result;


        }
    }

    function CartItemList(Request $request)
    {
        $user_id = $request->user_id;
        $result = CartModel::where('user_id', $user_id)->get();
        return $result;
    }

    function RemoveCartItem(Request $request)
    {
        $item_id = $request->id;
        $result = CartModel::where('id', $item_id)->delete();
        return $result;
    }  

    function ItemQtyIncrease(Request $request)
    {
        $item_id = $request->id;
        $product_quantity = $request->product_quantity + 1;
        $unit_price = $request->unit_price;
        $total_price = $unit_price * $product_quantity ;
        $result = CartModel::where('id', $item_id)->update([
                'product_quantity' => $product_quantity,
                'total_price' => $total_price
        ]);

        return $result;
    } 

     function ItemQtyDecrease(Request $request)
    {
      
        $item_id = $request->id;
        $product_quantity = $request->product_quantity - 1;
        $unit_price = $request->unit_price;
        $total_price = $unit_price * $product_quantity ;
        if($product_quantity >=1)
        {
            $result = CartModel::where('id', $item_id)->update([
                    'product_quantity' => $product_quantity,
                    'total_price' => $total_price
            ]);

            return $result;
        }
        else
        {
            return 0;
        }

    }

    function CartCount(Request $request)
    {
        $user_id = $request->user_id;
        $result = CartModel::where('user_id', $user_id)->count();
        return $result;

    }
}
