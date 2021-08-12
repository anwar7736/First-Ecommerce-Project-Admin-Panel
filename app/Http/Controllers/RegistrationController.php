<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\UserModel;
use App\Mail\RegistrationMail;
use Mail;
use Hash;

class RegistrationController extends Controller
{
    function UserRegistration(Request $request)
    {
        $fullname = $request->input('fullname');
        $username = $request->input('username');
        $email = $request->input('email');
        $phone = $request->input('phone');
        $photo = $request->file('photo');
        $password = Hash::make($request->input('password'));

        $userCount = UserModel::where('username', $username)->count();
        $emailCount = UserModel::where('email', $email)->count();
        $phoneCount = UserModel::where('phone', $phone)->count();

        if($userCount > 0)
        {
            return "Username already exists";
        }

        else if($emailCount > 0)
        {
            return "Email address already exists";
        } 

        else if($phoneCount > 0)
        {
            return "Phone number already exists";
        }

        else
        {
                $photoPath = $photo->store('public');
                $photoName = explode("/", $photoPath)[1];
                $photoURL = "https://".$_SERVER['HTTP_HOST']."/storage/app/public/".$photoName;

                $result = UserModel::insert([
                            'fullname' => $fullname,
                            'username' => $username,
                            'email'    => $email,
                            'phone'    => $phone,
                            'photo'    => $photoURL,
                            'password' => $password
                        ]);
                if($result==true)
                {
                    $data = ['name' => $fullname];
                    Mail::to($email)->send(new RegistrationMail($data));
                    return 1;  
                }
                
        }

    }
}
