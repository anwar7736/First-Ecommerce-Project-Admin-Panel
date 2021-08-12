<?php

namespace App\Http\Controllers;

use App\Models\adminModel;
use App\Models\ContactModel;
use Illuminate\Http\Request;

class ContactListController extends Controller
{
    function ContactListPage(){
        return view('contactList');
    }

    function ContactListData(){
        $result= ContactModel::orderBy('id','desc')->get();
        return $result;
    }

    function ContactListDelete(Request $request){
        $id=$request->input('id');
        $result=ContactModel::where('id','=',$id)->delete();
        if ($result==true){
            return 1;
        }
        else{
            return 0;
        }
    }
}
