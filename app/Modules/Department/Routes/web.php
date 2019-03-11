<?php


Route::group(['prefix' => 'department', 'middleware' => 'auth'], function () {
    Route::get('/index','DepartmentController@index')->name('department_index')->middleware('read_access');
    Route::get('/create','DepartmentController@create')->name('department_create')->middleware('create_access');
    Route::post('/store','DepartmentController@store')->name('department_store')->middleware('create_access');
    Route::get('/edit/{id}','DepartmentController@edit')->name('department_edit')->middleware('read_access');
    Route::post('/update/{id}','DepartmentController@update')->name('department_update')->middleware('update_access');
    Route::get('/delete/{id}','DepartmentController@delete')->name('department_delete')->middleware('delete_access');
});
