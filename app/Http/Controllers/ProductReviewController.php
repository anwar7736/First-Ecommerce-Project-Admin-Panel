<?php

namespace App\Http\Controllers;

use App\Models\ProductReviewModel;
use Illuminate\Http\Request;
use DB;

class ProductReviewController extends Controller
{
    function ProductReviewPage(){
        return view('Review.ProductReview');
    }

    function ProductReviewData(){
       // $result= ProductReviewModel::orderBy('id','desc')->get();
        $result = DB::table('review_list') 
                 ->join('productlist', 'review_list.product_code', 'productlist.code')
                 ->join('users','reviewer_id', 'users.id')
                 ->select('review_list.*', 'users.phone', 'productlist.name')
                 ->get();
        return $result;
    }

    function ProductReviewDelete(Request $request){
        $id=$request->input('id');
        $result=ProductReviewModel::where('id','=',$id)->delete();
        if ($result==true){
            return 1;
        }
        else{
            return 0;
        }
    }
}
