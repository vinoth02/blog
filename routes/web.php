<?php

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
    return redirect('login');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('/view/{id}' ,[App\Http\Controllers\PostController::class, 'index'] )->name('post.view');

Route::get('/create' ,[App\Http\Controllers\PostController::class, 'create'] )->name('post.create');

Route::post('/store' ,[App\Http\Controllers\PostController::class, 'store'] )->name('post.store');

Route::get('/edit/{id}' ,[App\Http\Controllers\PostController::class, 'edit'] )->name('post.edit');

Route::post('/update' ,[App\Http\Controllers\PostController::class, 'update'] )->name('post.update');

Route::get('/destroy/{id}' ,[App\Http\Controllers\PostController::class, 'destroy'] )->name('post.destroy');
