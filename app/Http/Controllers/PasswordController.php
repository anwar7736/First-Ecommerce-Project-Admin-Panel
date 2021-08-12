<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\UserModel;
use App\Models\OTPModel;
use App\Mail\VerificationMail;
use App\Mail\PasswordUpdateMail;
use Mail;
use Hash;


class PasswordController extends Controller
{
    function EmailVerification(Request $request)
    {
        $email = $request->input('email');
        $user  = UserModel::where('email', $email)->get();
        $emailCount = count($user);
        if($emailCount > 0)
        {
            $otp = rand(111111,999999);
            date_default_timezone_set('Asia/Dhaka');
            $date = date('Y-m-d');
            $time = date('h:i:sa', strtotime("+5 Minutes"));

            $result = OTPModel::insert([
                'email' => $email,
                'otp' => $otp,
                'time' => $time,
                'date' => $date
            ]);

            if($result==true)
            {
                $data = ['name' => $user[0]['fullname'], 'otp'=> $otp];
                Mail::to($email)->send(new VerificationMail($data));
                return 1;  
            }
        }
        else
        {
            return "Email address does not exists.";
        }
    } 
    function GetOTPExpiration(Request $request)
    {
        $email = $request->email;
        date_default_timezone_set('Asia/Dhaka');
        $curr_date = date('Y-m-d');
        $curr_time = date('h:i:sa');
        $data = OTPModel::where('email', $email)->where('date', $curr_date)->orderBy('id', 'desc')->first();
        $db_date = $data['date'];
        $db_time = $data['time'];
        $result = strtotime($db_date.' '.$db_time) - strtotime($curr_date.' '.$curr_time);
        return $result;
        
    }
    function OTPVerification(Request $request)
    {
        $email = $request->input('email');
        $otp   = $request->input('otp');
        date_default_timezone_set('Asia/Dhaka');
        $curr_date = date('Y-m-d');
        $curr_time = date('h:i:sa');
        
        $check_otp = OTPModel::where([
                            'email'=>$email, 
                            'otp'=>$otp,
                            'date'=>$curr_date,
                         ])
                         ->where('time','>', $curr_time)
                         ->count();
        if($check_otp===1)
        {
            return 1;
        }
        else
        {
            return 0;
        }
    }

    function ForgetPassword(Request $request)
    {
        $email = $request->email;
        $password  = Hash::make($request->password);
        $user = UserModel::where('email', $email)->get();
        if(count($user) > 0)
        { 
            $result = UserModel::where('email', $email)->update([
            'password' => $password
            ]);

            if($result==true)
            {
                $name = $user[0]['fullname'];
                Mail::to($email)->send(new PasswordUpdateMail($name));
                return 1;  
            }
        }
        
        else
        {
            return "Email address does not exists";
        }
    }

    function ChangePassword(Request $request)
    {
        $email = $request->email;
        $oldpass = $request->oldpass;
        $newpass = Hash::make($request->newpass);

        $user = UserModel::where('email', $email)->get();

        if(count($user) > 0 && Hash::check($oldpass, $user[0]['password']))
        {   
            $result = UserModel::where('email', $email)->update(['password' => $newpass]);
            if($result==true)
            {
                $name = $user[0]['fullname'];
                Mail::to($email)->send(new PasswordUpdateMail($name));
                return 1;  
            }
        }
        else{
            return "Old Password does not Match!";
        }
    }
}
