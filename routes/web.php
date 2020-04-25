<?php

use App\Events\WebsocketEvent;
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


Route::get('/', 'MoveController@index')->name('move');
Route::post('/all_users', 'MoveController@usersList');
Route::post('/get-text', 'MoveController@newListUser');



Route::get('/home', 'ChatsController@index')->name('home');
Route::get('/messages', 'ChatsController@fetchMessages');
Route::post('/messages', 'ChatsController@sendMessage');


Auth::routes();


