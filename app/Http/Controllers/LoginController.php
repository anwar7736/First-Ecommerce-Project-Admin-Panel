<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\UserModel;
use Hash;

class LoginController extends Controller
{
    function UserLogin(Request $request)
    {
        $username = $request->input('username');
        $password = $request->input('password');

        $getUser = UserModel::where('username', $username)->orWhere('email', $username)->get();

        if(count($getUser) > 0 && Hash::check($password, $getUser[0]['password']))
        {
            return   array(
                    'id' => $getUser[0]['id'],
                    'name' => $getUser[0]['fullname'],
                    'email' => $getUser[0]['email'],
                    'phone' => $getUser[0]['phone'],
                    'photo' => $getUser[0]['photo']
                );
        }
        else{
            return 0;
        }


    }
    function LoginWithGoogle(Request $request)
    {
    	$fullname = $request->input('name');
    	$email = $request->input('email');
    	$username = explode('@', $email)[0];
    	$phone = $request->input('phone');
    	$photo = $request->input('photo');
    	$password = date('Y').'@%&#'.rand(111111,999999);
    	$EncryptPass = Hash::make($password);

    	$getUser = UserModel::where('email', $email)->get();

    	if(count($getUser) > 0)
    	{
    	    UserModel::where('email', $email)->update(['password'=>$EncryptPass]);
    		return   array(
                    'id' => $getUser[0]['id'],
                    'name' => $getUser[0]['fullname'],
                    'email' => $getUser[0]['email'],
                    'phone' => $getUser[0]['phone'],
                    'photo' => $getUser[0]['photo'],
                    'pass' =>  $password
                    
                );
    	}
    	else
    	{
    		    /*$photoPath = $photo->store('public');
                $photoName = explode("/", $photoPath)[1];
                $photoURL = "https://".$_SERVER['HTTP_HOST']."/storage/app/public/".$photoName;*/
                $result = new UserModel();
                $result->fullname = $fullname;
                $result->username = $username;
                $result->email = $email;
                $result->phone = $phone;
                $result->photo = $photo;
                $result->password = $EncryptPass;
                $result->save();

                if($result==true)
                {
                	$user_id = $result->id;
                	$getUser = UserModel::where('id', $user_id)->get();
	    			return  array(
	                    'id' => $getUser[0]['id'],
	                    'name' => $getUser[0]['fullname'],
	                    'email' => $getUser[0]['email'],
	                    'phone' => $getUser[0]['phone'],
	                    'photo' => $getUser[0]['photo'],
	                    'pass' =>  $password,
	                );
                }
    	}


    }
}