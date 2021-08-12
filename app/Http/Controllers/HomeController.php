<?php

namespace App\Http\Controllers;

use App\Models\adminModel;
use App\Models\ContactModel;
use App\Models\CustomOrderModel;
use App\Models\NotificationModel;
use App\Models\OrderModel;
use App\Models\VisitorModel;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    function HomePage(){
        return view('index');
    }

    function HomeSummary(){
        $pending='pending';
        $TotalAdmin=adminModel::count();
        $TotalContact=ContactModel::count();
        $TotalNotification=NotificationModel::count();
        $TotalVisitor=VisitorModel::count();
        $TotalCustomOrder=0;
        $TotalOrder=OrderModel::count();
        $TotalPendingOrder=OrderModel::where('order_status',$pending)->count();

        $SummaryArray=[
            'TotalAdmin'=>$TotalAdmin,
            'TotalContact'=>$TotalContact,
            'TotalNotification'=>$TotalNotification,
            'TotalVisitor'=>$TotalVisitor,
            'TotalCustomOrder'=>$TotalCustomOrder,
            'TotalOrder'=>$TotalOrder,
            'TotalPendingOrder'=>$TotalPendingOrder,
        ];

        return json_encode($SummaryArray);
    }
}
