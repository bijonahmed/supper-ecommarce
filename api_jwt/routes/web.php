<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Cart\CartController;
use App\Http\Controllers\UnauthenticatedController;
use App\Http\Controllers\PasswordResetController; // Replace with your actual controller namespace
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::post('/resetPassword', [PasswordResetController::class, 'passwordReset'])->name('passwordReset');
Route::get('reset-password/{id}', [PasswordResetController::class, 'resetPassowrd']);
Route::post('add-to-cart', [CartController::class, 'addToCart']);
Route::post('/remove-from-cart', 'CartController@removeFromCart');
Route::get('cart', [CartController::class, 'index']);
Route::get('clearCart', [CartController::class, 'clearCart']);

Route::get('/', function () {
    return view('welcome');
   
});
