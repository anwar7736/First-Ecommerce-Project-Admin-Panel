<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\FavouriteModel;
use App\Models\ProductListModel;

class FavouriteController extends Controller
{
    function AddToFavourite(Request $request)
    {
        $user_id = $request->user_id;
        $product_code = $request->product_code;

        $countItem = FavouriteModel::where([
            'user_id' => $user_id, 
            'product_code' => $product_code
        ])->count();

        if($countItem > 0)
        {
            return 0;
        }

        else
        {
            $productDetails = ProductListModel::where('code', $product_code)->get();

            $result = FavouriteModel::insert([
                     'product_code' => $product_code,
                     'product_name' => $productDetails[0]['name'],
                     'product_price' => $productDetails[0]['price'],
                     'product_image' => $productDetails[0]['image'],
                     'user_id' => $user_id,
            ]);
            return $result;
        }

    }

    function FavItemList(Request $request)
    {
        $user_id = $request->user_id;

        $result = FavouriteModel::where('user_id', $user_id)->get();
        return $result;
    }  
    
    function FavItemCount(Request $request)
    {
        $user_id = $request->user_id;

        $result = FavouriteModel::where('user_id', $user_id)->count();
        return $result;
    } 

    function RemoveFavItem(Request $request)
    {
        $item_id = $request->id;

        $result = FavouriteModel::where('id', $item_id)->delete();
        return $result;
    }
}
