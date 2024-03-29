<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\SliderModel;
use App\Models\ProductListModel;
use Storage;

class SliderController extends Controller
{
    function SliderListPage(){
        return view('Product.Slider');
    }

    function SliderListData(){
        $result= SliderModel::orderBy('id','desc')->get();
        return $result;
    }

    function GetProductCode(){
        $result= ProductListModel::select('name','code')->orderBy('id','desc')->get();
        return $result;
    }


    function SliderAdd(Request $request){
        $filePath=$request->file('image')->store('public');
        $fileName=explode("/", $filePath)[1];
        $image="https://".$_SERVER['HTTP_HOST']."/storage/app/public/".$fileName;

        $text_color=$request->input('text_color');
        $bg_color=$request->input('bg_color');
        $title=$request->input('title');
        $sub_title=$request->input('sub_title');
        $product_code=$request->input('product_code');
        $DataArray=explode('(' , rtrim($product_code, ')'));
        $product_code_original=$DataArray[0];
        $result=SliderModel::insert([
            'text_color'=>$text_color,
            'bg_color'=>$bg_color,
            'image'=>$image,
            'title'=>$title,
            'subtitle'=>$sub_title,
            'product_code'=>$product_code_original
        ]);
        if ($result==true){
            return 1;
        }
        else{
            return 0;
        }
    }

    function SliderDelete(Request $request){
        $id=$request->input('id');
        $imageURL=$request->input('imageURL');

        $OldPhotoURLArray= explode("/", $imageURL);
        $OldPhotoName=end($OldPhotoURLArray);

        $result=SliderModel::where('id','=',$id)->delete();
        Storage::delete('public/'.$OldPhotoName);
        if ($result==true){
            return 1;
        }
        else{
            return 0;
        }
    }
    function ChangeSliderImage(Request $request){

        $OldPhotoURL=$request->input('oldImage');
        $OldPhotoID=$request->input('ImageID');

        $OldPhotoURLArray= explode("/", $OldPhotoURL);
        $OldPhotoName=end($OldPhotoURLArray);


        $NewPhotoPath=$request->file('newImage')->store('public');
        $NewPhotoName=explode("/", $NewPhotoPath)[1];
        $NewPhotoURL="https://".$_SERVER['HTTP_HOST']."/storage/app/public/".$NewPhotoName;
        $UpdateResult= SliderModel::where('id','=',$OldPhotoID)->update(['image'=>$NewPhotoURL]);
        $DeleteResult= Storage::delete('public/'.$OldPhotoName);

        return $UpdateResult;
    }

    function SliderListEditData(Request $request){
        $id=$request->input('id');
        $result=SliderModel::where('id','=',$id)->get();
        return $result;
    }

    function SliderDataEdit(Request $request){

        $id=$request->input('id');
        $text_color=$request->input('text_color');
        $bg_color=$request->input('bg_color');
        $title=$request->input('title');
        $sub_title=$request->input('sub_title');
        $product_code=$request->input('product_code');
        $result=SliderModel::where('id',$id)->update([
            'text_color'=>$text_color,
            'bg_color'=>$bg_color,
            'title'=>$title,
            'subtitle'=>$sub_title,
            'product_code'=>$product_code
        ]);
        return $request;
    }
    
    function GetSliderInfo(Request $request)
    {
        $result = SliderModel::all();
        return $result;
    }
}
