<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\VisitorController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\SiteInfoController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductListController;
use App\Http\Controllers\SliderController;
use App\Http\Controllers\ProductDetailsController;
use App\Http\Controllers\ReviewListController;
use App\Http\Controllers\SimilarProductController;
use App\Http\Controllers\NotificationController;
use App\Http\Controllers\ProductSearchController;
use App\Http\Controllers\RegistrationController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\PasswordController;
use App\Http\Controllers\FavouriteController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\ConfirmOrderController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\OrderPaymentController;

// header('Access-Control-Allow-Origin: *');
// header('Access-Control-Allow-Methods: *');
// header('Access-Control-Allow-Headers: *');

Route::get('/GetVisitorDetails', [VisitorController::class, 'GetVisitorDetails']);
Route::post('/SendContactDetails', [ContactController::class, 'SendContactDetails']);
Route::get('/GetSiteInfo', [SiteInfoController::class, 'GetSiteInfo']);
Route::get('/GetCategoryInfo', [CategoryController::class, 'GetCategoryInfo']);
Route::get('/ProductListByRemark/{remark}', [ProductListController::class, 'ProductListByRemark']);
Route::get('/ProductListByCategory/{category}', [ProductListController::class, 'ProductListByCategory']);
Route::get('/ProductListBySubcategory/{category}/{subcategory}', [ProductListController::class, 'ProductListBySubcategory']);
Route::get('/GetSliderInfo', [SliderController::class, 'GetSliderInfo']);
Route::get('/GetProductDetails/{product_code}', [ProductDetailsController::class, 'GetProductDetails']);
Route::post('/PostUserReview', [ReviewListController::class, 'PostUserReview']);
Route::get('/GetReviewList/{product_code}', [ReviewListController::class, 'GetReviewList']);
Route::get('/GetSimilarProducts/{subcategory}', [SimilarProductController::class, 'GetSimilarProducts']);
Route::post('/SendNotification', [NotificationController::class, 'SendNotification']);
Route::get('/GetNotificationList/{user_id}', [NotificationController::class, 'GetNotificationList']);
Route::get('/CountUnreadNotification/{user_id}', [NotificationController::class, 'CountUnreadNotification']);
Route::get('/UpdateNotificationStatus/{id}', [NotificationController::class, 'UpdateNotificationStatus']);
Route::get('/ProductListBySearch/{search_query}', [ProductSearchController::class, 'ProductListBySearch']);
Route::post('/UserRegistration', [RegistrationController::class, 'UserRegistration']);
Route::post('/UserLogin', [LoginController::class, 'UserLogin']);
Route::post('/LoginWithGoogle', [LoginController::class, 'LoginWithGoogle']);
Route::post('/EmailVerification', [PasswordController::class, 'EmailVerification']);
Route::post('/GetOTPExpiration', [PasswordController::class, 'GetOTPExpiration']);
Route::post('/OTPVerification', [PasswordController::class, 'OTPVerification']);
Route::post('/ForgetPassword', [PasswordController::class, 'ForgetPassword']);
Route::post('/ChangePassword', [PasswordController::class, 'ChangePassword']);
Route::post('/AddToFavourite', [FavouriteController::class, 'AddToFavourite']);
Route::get('/FavItemList/{user_id}', [FavouriteController::class, 'FavItemList']);
Route::get('/FavItemCount/{user_id}', [FavouriteController::class, 'FavItemCount']);
Route::get('/RemoveFavItem/{id}', [FavouriteController::class, 'RemoveFavItem']);
Route::post('/AddToCart', [CartController::class, 'AddToCart']);
Route::get('/CartItemList/{user_id}', [CartController::class, 'CartItemList']);
Route::get('/CartCount/{user_id}', [CartController::class, 'CartCount']);
Route::get('/RemoveCartItem/{id}', [CartController::class, 'RemoveCartItem']);
Route::get('/RemoveCartItem/{id}', [CartController::class, 'RemoveCartItem']);
Route::post('/ItemQtyIncrease', [CartController::class, 'ItemQtyIncrease']);
Route::post('/ItemQtyDecrease', [CartController::class, 'ItemQtyDecrease']);
Route::get('/GetUserProfile/{user_id}', [ProfileController::class, 'GetUserProfile']);
Route::post('/UpdateProfile', [ProfileController::class, 'UpdateProfile']);
// Route::post('/PlaceUserOrder', [ConfirmOrderController::class, 'PlaceUserOrder']);
// Route::get('/GetOrderDetails/{user_id}', [ConfirmOrderController::class, 'GetOrderDetails']);
Route::post('/PlaceUserOrder', [OrderController::class, 'checkout']);
Route::get('/GetOrderList/{user_id}', [OrderController::class, 'orderList']);
Route::get('/GetOrderDetails/{id}', [OrderController::class, 'show']);

Route::get('/GetPaymentList/{user_id}', [OrderPaymentController::class, 'paymentList']);

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
