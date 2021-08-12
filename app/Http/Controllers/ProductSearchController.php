<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ProductListModel;

class ProductSearchController extends Controller
{
    function ProductListBySearch(Request $request)
    {
        $search_query = $request->search_query;
        $result = ProductListModel::where('name', 'LIKE', '%'.$search_query.'%')->get();
        return $result;
    }
}
