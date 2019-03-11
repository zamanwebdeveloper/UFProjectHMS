<?php


Route::group(['prefix' => 'bill' , 'middleware' => 'auth'], function () {
    Route::get('/', 'BillWebController@index')->name('bil_index')->middleware('read_access');
    Route::get('show/{id}', 'BillWebController@show')->name('bil_show')->middleware('read_access');
    Route::get('pay-amount/{bill_id}/{patient_id}', 'BillWebController@pay')->name('bill_pay')->middleware('update_access');
    Route::post('update/{id}', 'BillWebController@update')->name('bill_update')->middleware('update_access');
});
