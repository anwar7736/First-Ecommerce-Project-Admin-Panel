<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\ReviewListModel;


class ReviewListController extends Controller
{
    function GetReviewList(Request $request)
    {
        $product_code = $request->product_code;

        $result = ReviewListModel::where('product_code', $product_code)->orderBy('id', 'desc')->limit(5)->get();
        return $result;
    }

    function PostUserReview(Request $request)
    {
        $reviewer_id        = $request->reviewer_id;
        $product_code       = $request->product_code;
        $reviewer_photo     = $request->reviewer_photo;
        $reviewer_name      = $request->reviewer_name;
        $reviewer_rating    = $request->reviewer_rating;
        $reviewer_comments  = $request->reviewer_comments;

        $result = ReviewListModel::insert([
                'reviewer_id'       =>   $reviewer_id,
                'product_code'      =>   $product_code,
                'reviewer_photo'    =>   $reviewer_photo,
                'reviewer_name'     =>   $reviewer_name,
                'reviewer_rating'   =>   $reviewer_rating,
                'reviewer_comments' =>   $reviewer_comments,

                ]);

        return $result;
    }
}
