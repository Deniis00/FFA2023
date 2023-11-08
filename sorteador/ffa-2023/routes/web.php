<?php

use App\Http\Controllers\SceneController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/videos', function () {
    return view('videos');
});
Route::get('/videos2', function () {
    return view('videos2');
});

Route::get('/reproducir/{videoId}', 'VideoController@showVideo');

