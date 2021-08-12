<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ContactModel;

class ContactController extends Controller
{
    function SendContactDetails(Request $request)
    {
        $name    = $request->input('name');
        $email  = $request->input('email');
        $message = $request->input('message');

        date_default_timezone_set("Asia/Dhaka");
        $contact_date = date('d-m-Y');
        $contact_time = date('h:i:sa');

        $result = ContactModel::insert([
                  'name'         => $name,
                  'email'       => $email,
                  'message'      => $message,
                  'contact_date' => $contact_date,
                  'contact_time' => $contact_time,

        ]);

        return $result;
    }
}
