<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\UserModel;
use Storage;

class ProfileController extends Controller
{
	function GetUserProfile(Request $request)
	{
		$id = $request->user_id;
		$result = UserModel::where('id', $id)->get();
		return $result;
	}
	
    function UpdateProfile(Request $request)
    {
        $id = $request->id;
        $name = $request->name;
        $username = $request->username;
        $email = $request->email;
        $phone = $request->phone;
        $photo = $request->file('photo');

        $userInfo = UserModel::where('id', $id)->get();
        $userCount = UserModel::where('username', $username)->count();
        $emailCount = UserModel::where('email', $email)->count();
        $phoneCount = UserModel::where('phone', $phone)->count();

        if($userInfo[0]['username']!==$username && $userCount > 0)
        {
            return "Username already exists";
        }

        else if($userInfo[0]['email']!==$email && $emailCount > 0)
        {
            return "Email address already exists";
        } 

        else if($userInfo[0]['phone']!==$phone && $phoneCount > 0)
        {
            return "Phone number already exists";
        }

        else
        {
        if($photo=='')
        {
            $result = UserModel::where('id', $id)
                    ->update([
                        'fullname' => $name,
                        'username' => $username,
                        'email' => $email,
                        'phone'    => $phone
                    ]);
            if($result==true)
            {
                $userInfo = UserModel::where('id', $id)->get();
                return   array(
                    'name' => $userInfo[0]['fullname'],
                    'email' => $userInfo[0]['email'],
                    'phone' => $userInfo[0]['phone'],
                    'photo' => $userInfo[0]['photo'],
                );
            }
            else
            {
                return 0;
            }
        }

        else
        {
             $userInfo = UserModel::where('id', $id)->get();
             $domain = explode('/', $userInfo[0]['photo'])[2];

             if($domain==='admin.coderanwar.com')
             { 
                $oldPhotoName = explode('/', $userInfo[0]['photo'])[6];
                Storage::delete('public/'.$oldPhotoName); 
               
             }

            $photoPath = $photo->store('public');
            $photoName = explode('/', $photoPath)[1];
            // $photoURL  = 'https://'.$_SERVER['HTTP_HOST'].'/storage/app/public/'.$photoName;
            $photoURL  = 'http://'.$_SERVER['HTTP_HOST'].'/storage/'.$photoName;

            $result = UserModel::where('id', $id)
                    ->update([
                        'fullname' => $name,
                        'username' => $username,
                        'email' => $email,
                        'phone'    => $phone,
                        'photo'    => $photoURL,
                    ]);
            if($result==true)
            { 
                $userInfo = UserModel::where('id', $id)->get();
                return   array(
                    'name' => $userInfo[0]['fullname'],
                    'email' => $userInfo[0]['email'],
                    'phone' => $userInfo[0]['phone'],
                    'photo' => $userInfo[0]['photo'],
                );
            }
            else
            {
                return 0;
            }
        }
    }
    }
}
