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

Route::group(['prefix' => 'prescription', 'middleware' => 'auth'], function () {
    Route::get('/','PrescriptionController@index')->name('prescription_index')->middleware('read_access');
    Route::get('/create','PrescriptionController@create')->name('prescription_create')->middleware('create_access');
    Route::post('/store','PrescriptionController@store')->name('prescription_store')->middleware('create_access');
    Route::get('/show/{id}','PrescriptionController@show')->name('prescription_show')->middleware('read_access');
    Route::get('/edit/{id}','PrescriptionController@edit')->name('prescription_edit')->middleware('read_access');
    Route::post('/update/{id}','PrescriptionController@update')->name('prescription_update')->middleware('update_access');
    Route::get('/delete/{id}','PrescriptionController@delete')->name('prescription_delete')->middleware('delete_access');


    Route::get('/medicine-taking-schedule/{type_id}','PrescriptionController@medicineTakingSchedule')->name('prescription_medicine_taking_schedule')->middleware('read_access');
    Route::get('/test-charge/{id}','PrescriptionController@testCharge')->name('test_category_charge')->middleware('read_access');
});
