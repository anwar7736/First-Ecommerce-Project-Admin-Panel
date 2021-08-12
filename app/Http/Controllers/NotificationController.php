<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\NotificationModel;
use App\Models\NotificationInfoModel;
use App\Models\UserModel;
use DB;

class NotificationController extends Controller
{
    function SendNotification(Request $request)
    {

        $insertStatus='';
        $title = $request->input('title');
        $message = $request->input('message');
        date_default_timezone_set('Asia/Dhaka');
        $insert_date = date('Y-m-d');
        $insert_time = date('h:i:sa');
     
        $result = new NotificationModel;
        $result->title = $title;
        $result->message = $message;
        $result->date = $insert_date;
        $result->time = $insert_time;
        $result->save();
        $last_id = $result->id;
        if($result==true)
        {
            $users = UserModel::all();
            foreach($users as $user)
            {
                $insert = NotificationInfoModel::insert([
                    'notification_id' => $last_id,
                    'user_id' => $user->id,
                    'status' => 'unread',
                ]);
            }
            if($insert==true)
            {
                $insertStatus = 1;
            }
            else
            {
                $insertStatus = 0;
            }
        }

        return $insertStatus;
        
    }

    function GetNotificationList(Request $request)
    {
        $user_id = $request->user_id;
        $result = DB::table('notification_info')
                ->join('notification', 'notification_info.notification_id', 'notification.id')
                ->where('notification_info.user_id', $user_id)
                ->orderBy('notification.id', 'desc')
                ->select(
                    'notification_info.*', 
                    'notification.title', 
                    'notification.message', 
                    'notification.date',
                    'notification.time'
                    )
                ->get();
        return $result;
    }

    function CountUnreadNotification(Request $request)
    {
        $user_id = $request->user_id;
        $countUnread = NotificationInfoModel::where(['user_id'=> $user_id, 'status'=> 'unread'])
                                            ->count();
        return $countUnread;

    } 
    
    function UpdateNotificationStatus(Request $request)
    {
        $id = $request->id;
        $result = NotificationInfoModel::where('id', $id)
                                        ->update(['status'=>'read']);
        return $result;

    }
    
}
