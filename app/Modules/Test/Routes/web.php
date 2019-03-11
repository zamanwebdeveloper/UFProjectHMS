<?php

//Test Category
Route::group(['prefix' => 'test/test-category', 'middleware' => 'auth'], function () {
    Route::get('/','TestCategoryController@index')->name('test_category_index')->middleware('read_access');
    Route::get('/create','TestCategoryController@create')->name('test_category_create')->middleware('create_access');
    Route::post('/store','TestCategoryController@store')->name('test_category_store')->middleware('create_access');
    Route::get('/edit/{id}','TestCategoryController@edit')->name('test_category_edit')->middleware('read_access');
    Route::post('/update/{id}','TestCategoryController@update')->name('test_category_update')->middleware('update_access');
    Route::get('/delete/{id}','TestCategoryController@delete')->name('test_category_delete')->middleware('delete_access');
});

//Test
Route::group(['prefix' => 'test', 'middleware' => 'auth'], function () {
    Route::get('/','TestController@index')->name('test_index')->middleware('read_access');
    Route::get('/create/{id}','TestController@create')->name('test_create')->middleware('create_access');
    Route::post('/store','TestController@store')->name('test_store')->middleware('create_access');
    Route::get('/edit/{id}','TestController@edit')->name('test_edit')->middleware('read_access');
    Route::post('/update/{id}','TestController@update')->name('test_update')->middleware('update_access');
    Route::get('/delete/{id}','TestController@delete')->name('test_delete')->middleware('delete_access');
});
