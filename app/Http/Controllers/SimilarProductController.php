<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ProductListModel;

class SimilarProductController extends Controller
{
    function GetSimilarProducts(Request $request)
    {
        $subcategory = $request->subcategory;
        $result = ProductListModel::where('subcategory', $subcategory)->orderBy('id', 'desc')->limit(12)->get();
        return $result;
    }
}
