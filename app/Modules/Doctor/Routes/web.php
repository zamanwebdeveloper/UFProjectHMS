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

Route::group(['prefix' => 'doctor', 'middleware' => 'auth'], function () {
    Route::get('/index','DoctorController@index')->name('doctor_index')->middleware('read_access');
    Route::get('/create','DoctorController@create')->name('doctor_create')->middleware('create_access');
    Route::post('/store','DoctorController@store')->name('doctor_store')->middleware('create_access');
    Route::get('/edit/{id}','DoctorController@edit')->name('doctor_edit')->middleware('read_access');
    Route::get('/show/{id}','DoctorController@show')->name('doctor_show')->middleware('read_access');
    Route::post('/update/{id}','DoctorController@update')->name('doctor_update')->middleware('update_access');
    Route::get('/delete/{id}','DoctorController@delete')->name('doctor_delete')->middleware('delete_access');
});
