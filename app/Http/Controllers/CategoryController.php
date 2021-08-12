<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\CategoryModel;
use App\Models\SubCategoryModel;
use App\Models\ProductListModel;
use Storage;

class CategoryController extends Controller
{

    function CategoryListPage(){
        return view('Product.category');
    }

    function CategoryListData(){
        $result= CategoryModel::orderBy('id','desc')->get();
        return $result;
    }
    function GetCategoryName(Request $request){
        $id=$request->input('id');
        $result=CategoryModel::where('id','=',$id)->get();
        return $result;
    }

    function CategoryAdd(Request $request){
        $filePath=$request->file('cat_image')->store('public');
        $fileName=explode("/", $filePath)[1];
        $cat_image="https://".$_SERVER['HTTP_HOST']."/storage/app/public/".$fileName;
        $cat_name=$request->input('cat_name');
        $result=CategoryModel::insert([
            'category_name'=>$cat_name,
            'category_image'=>$cat_image,
        ]);
        if ($result==true){
            return 1;
        }
        else{
            return 0;
        }
    }

    function CategoryDelete(Request $request){
        $id=$request->input('id');
        $imageURL=$request->input('imageURL');

        $OldPhotoURLArray= explode("/", $imageURL);
        $OldPhotoName=end($OldPhotoURLArray);

        $result=CategoryModel::where('id','=',$id)->delete();
        Storage::delete('public/'.$OldPhotoName);
        if ($result==true){
            return 1;
        }
        else{
            return 0;
        }
    }

    function CategoryNameEdit(Request $request){
        $cat_id=$request->input('cat_id');
        $old_cat_name=$request->input('sobuj');
        $new_cat_name=$request->input('new_cat_name');
        $test='Sobuj';

        CategoryModel::where('category_name',$old_cat_name)->update([
            'category_name'=>$new_cat_name
        ]);
        SubCategoryModel::where('category_name',$old_cat_name)->update([
            'category_name'=>$new_cat_name
        ]);
        ProductListModel::where('category',$old_cat_name)->update([
            'category'=>$new_cat_name
        ]);

        return 1;

    }

    function ChangeCategoryImage(Request $request){

        $OldPhotoURL=$request->input('oldImage');
        $OldPhotoID=$request->input('ImageID');

        $OldPhotoURLArray= explode("/", $OldPhotoURL);
        $OldPhotoName=end($OldPhotoURLArray);


        $NewPhotoPath=$request->file('newImage')->store('public');
        $NewPhotoName=explode("/", $NewPhotoPath)[1];
        $NewPhotoURL="https://".$_SERVER['HTTP_HOST']."/storage/app/public/".$NewPhotoName;
        $UpdateResult= CategoryModel::where('id','=',$OldPhotoID)->update(['category_image'=>$NewPhotoURL]);
        $DeleteResult= Storage::delete('public/'.$OldPhotoName);

        return $UpdateResult;
    }
    
    function GetCategoryInfo(Request $request)
    {
        $categories = CategoryModel::all();
        $category_array = [];

        foreach($categories as $category)
        {
            $subcategory = SubCategoryModel::where('category_name', $category['category_name'])->get('subcategory_name');

            $items = [
                        'category'    =>  $category['category_name'],
                        'image'       =>  $category['category_image'],
                        'subcategory' =>  $subcategory,
                    ];
                    array_push($category_array, $items); 
        }
        return $category_array;
    }
}
