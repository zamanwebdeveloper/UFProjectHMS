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

Route::group(['prefix' => 'lab', 'middleware' => 'auth'], function () {
    Route::get('/','LabController@index')->name('lab_index')->middleware('read_access');
    Route::get('/take-test/{id}/{test_category_id}','LabController@takeTest')->name('take_test')->middleware('create_access');
    Route::post('/store','LabController@store')->name('lab_store')->middleware('create_access');
    Route::get('/edit/{id}','LabController@edit')->name('lab_edit')->middleware('read_access');
    Route::post('/update/{id}','LabController@update')->name('lab_update')->middleware('update_access');
    Route::get('/delete/{id}','LabController@delete')->name('lab_delete')->middleware('delete_access');

    Route::get('/complete-test','LabController@completeTest')->name('lab_complete_test')->middleware('read_access');
    Route::get('/test-report','LabController@testReport')->name('lab_test_report')->middleware('read_access');
    Route::get('/test-report/{id}','LabController@testLabReportComplete')->name('lab_test_report_complete')->middleware('read_access');
    Route::get('/test-report-show/{id}','LabController@testReportShow')->name('lab_test_report_show')->middleware('read_access');
});
