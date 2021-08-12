<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\ProductListModel;
use App\Models\CategoryModel;
use App\Models\SubCategoryModel;
use Storage;

class ProductListController extends Controller
{

    function ProductListPage(){
        return view('Product.ProductList');
    }

    function ProductListData(){
        $result= ProductListModel::orderBy('id','desc')->get();
        return $result;
    }

    function GetCategoryList(){
        $result= CategoryModel::select('category_name')->orderBy('id','desc')->get();
        return $result;
    }

    function GetSubCategoryAsCategory(Request $request){
        $category_name=$request->input('category_name');
        $result=SubCategoryModel::select('subcategory_name')->where('category_name','=',$category_name)->get();
        return $result;
    }

    function ProductListAdd(Request $request){
        $filePath=$request->file('image')->store('public');
        $fileName=explode("/", $filePath)[1];
        $image="https://".$_SERVER['HTTP_HOST']."/storage/app/public/".$fileName;

        $title=$request->input('title');
        $price=$request->input('price');
        $special_price=$request->input('special_price');
        $category=$request->input('category');
        $subcategory=$request->input('subcategory');
        $remark=$request->input('remark');
        $brand=$request->input('brand');
        $shop=$request->input('shop');
        $DataArray=explode('(' , rtrim($shop, ')'));
        //$shop_code=$DataArray[0];
        //$shop_name=$DataArray[1];


        $star=$request->input('star');
        $stock=$request->input('stock');
        $product_code=$request->input('product_code');
        $result=ProductListModel::insert([
            'name'=>$title,
            'price'=>$price,
            'special_price'=>$special_price,
            'image'=>$image,
            'category'=>$category,
            'subcategory'=>$subcategory,
            'remark'=>$remark,
            'brand'=>$brand,
            'shop'=>"",
            'shop_name'=>"",
            'star'=>$star,
            'code'=>$product_code,
            'stock'=>$stock
        ]);
        if ($result==true){
            return 1;
        }
        else{
            return 0;
        }
    }

    function ProductListDelete(Request $request){
        $id=$request->input('id');
        $imageURL=$request->input('imageURL');

        $OldPhotoURLArray= explode("/", $imageURL);
        $OldPhotoName=end($OldPhotoURLArray);

        $result=ProductListModel::where('id','=',$id)->delete();
        Storage::delete('public/'.$OldPhotoName);
        if ($result==true){
            return 1;
        }
        else{
            return 0;
        }
    }

    function ChangeProductListImage(Request $request){

        $OldPhotoURL=$request->input('oldImage');
        $OldPhotoID=$request->input('ImageID');

        $OldPhotoURLArray= explode("/", $OldPhotoURL);
        $OldPhotoName=end($OldPhotoURLArray);


        $NewPhotoPath=$request->file('newImage')->store('public');
        $NewPhotoName=explode("/", $NewPhotoPath)[1];
        $NewPhotoURL="https://".$_SERVER['HTTP_HOST']."/storage/app/public/".$NewPhotoName;
        $UpdateResult= ProductListModel::where('id','=',$OldPhotoID)->update(['image'=>$NewPhotoURL]);
        $DeleteResult= Storage::delete('public/'.$OldPhotoName);

        return $UpdateResult;
    }

    //edit data
    function ProductListEditData(Request $request){
        $id=$request->input('id');
        $result=ProductListModel::where('id','=',$id)->get();
        return $result;
    }

    function ProductListDataEdit(Request $request){
        $editID=$request->input('editID');
        $title=$request->input('title');
        $price=$request->input('price');
        $special_price=$request->input('special_price');
        $remark=$request->input('remark');
        $star=$request->input('star');
        $stock=$request->input('stock');
        $result=ProductListModel::where('id',$editID)->update([
            'name'=>$title,
            'price'=>$price,
            'special_price'=>$special_price,
            'remark'=>$remark,
            'star'=>$star,
            'stock'=>$stock
        ]);
        return $result;
    }

    function ProductListByRemark(Request $request)
    {   
        $remark = $request->remark;
        $result =  ProductListModel::where('remark', $remark)->get();
        return $result;
    }

    function ProductListByCategory(Request $request)
    {   
        $category = $request->category;
        $result =ProductListModel::where('category', $category)->get();
        return $result;
    }

    function ProductListBySubcategory(Request $request)
    {   
        $category = $request->category;
        $subcategory = $request->subcategory;
        $result =ProductListModel::where(['category'=>$category, 'subcategory'=>$subcategory])->get();
        return $result;
    }
}
