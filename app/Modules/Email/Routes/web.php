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

Route::group(['prefix' => 'patient/bill', 'middleware' => 'auth'], function () {

    Route::get('/mail/view/{id}','MailController@mailView')->name('patient_bill_mail_send_view')->middleware('read_access');
    Route::post('mail/send/{id}', 'MailController@mailSend')->name('patient_bill_mail_send')->middleware('create_access');

});




