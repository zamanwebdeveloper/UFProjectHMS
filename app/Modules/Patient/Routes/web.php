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

Route::group(['prefix' => 'patient', 'middleware' => 'auth'], function () {
    Route::get('/index','PatientController@index')->name('patient_index')->middleware('read_access');
    Route::get('/create','PatientController@create')->name('patient_create')->middleware('create_access');
    Route::post('/store','PatientController@store')->name('patient_store')->middleware('create_access');
    Route::get('/show/{id}','PatientController@show')->name('patient_show')->middleware('read_access');
    Route::get('/edit/{id}','PatientController@edit')->name('patient_edit')->middleware('read_access');
    Route::post('/update/{id}','PatientController@update')->name('patient_update')->middleware('update_access');
    Route::get('/delete/{id}','PatientController@delete')->name('patient_delete')->middleware('delete_access');
    Route::get('/bill/{id}','PatientController@bill')->name('patient_bill')->middleware('read_access');


    Route::get('/prescription/{id}','PatientController@prescription')->name('patient_prescription')->middleware('read_access');
    Route::get('/get-bed/{ward_id}','PatientController@patientGetBed')->name('patient_get_bed')->middleware('read_access');

    Route::get('/status/create/{id}','PatientController@statusCreate')->name('status_create')->middleware('create_access');
    Route::post('/status/store/{id}','PatientController@statusStore')->name('patient_status')->middleware('create_access');

});
