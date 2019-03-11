<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your module. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::group(['prefix' => 'stuff', 'middleware' => 'auth'], function () {

    Route::get('/index','StuffController@index')->name('stuff_index')->middleware('read_access');
    Route::get('/create','StuffController@create')->name('stuff_create')->middleware('create_access');
    Route::post('/store','StuffController@store')->name('stuff_store')->middleware('create_access');
    Route::get('/edit/{id}','StuffController@edit')->name('stuff_edit')->middleware('read_access');
    Route::post('/update/{id}','StuffController@update')->name('stuff_update')->middleware('update_access');
    Route::get('/delete/{id}','StuffController@delete')->name('stuff_delete')->middleware('delete_access');

});

Route::group(['prefix' => 'stuff-type', 'middleware' => 'auth'], function () {

    Route::get('/index','StuffTypeController@index')->name('stuff_type_index')->middleware('read_access');
    Route::get('/create','StuffTypeController@create')->name('stuff_type_create')->middleware('create_access');
    Route::post('/store','StuffTypeController@store')->name('stuff_type_store')->middleware('create_access');
    Route::get('/edit/{id}','StuffTypeController@edit')->name('stuff_type_edit')->middleware('read_access');
    Route::post('/update/{id}','StuffTypeController@update')->name('stuff_type_update')->middleware('update_access');
    Route::get('/delete/{id}','StuffTypeController@delete')->name('stuff_type_delete')->middleware('delete_access');

});
