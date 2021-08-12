<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\VisitorModel;


class VisitorController extends Controller
{
    function GetVisitorDetails(Request $request){
        $ip_address = $_SERVER['REMOTE_ADDR'];
        date_default_timezone_set('Asia/Dhaka');
        $visit_time = date('h:i:sa');
        $visit_date = date('d-m-Y');

        $visitor_count = VisitorModel::where('ip_address', $ip_address)->count();
        if($visitor_count > 0){
            $result = VisitorModel::where('ip_address', $ip_address)->update([
            'visit_time' => $visit_time,
            'visit_date' => $visit_date
            ]);
        }
        else{
            $result = VisitorModel::insert([
            'ip_address' => $ip_address,
            'visit_time' => $visit_time,
            'visit_date' => $visit_date
            ]);
        }

        return $result;
    }
}
