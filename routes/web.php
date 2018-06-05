<?php

Route::get('/', function () {
    return view('welcome');
});

Route::group(['middleware' => 'visitor'], function(){
	Route::get('/register', 'RegistrationController@register');
	Route::post('/register', 'RegistrationController@postRegister');
	Route::get('/login', 'LoginController@login');
	Route::post('/login', 'LoginController@postLogin');

	//Forgot Password
	Route::get('/forgot-password', 'ForgotPasswordController@forgotPassword');
	Route::post('/forgot-password', 'ForgotPasswordController@postForgotPassword');

	//Reset Password
	Route::get('/reset/{email}/{resetCode}', 'ForgotPasswordController@resetPassword');
	Route::post('/reset/{email}/{resetCode}', 'ForgotPasswordController@postResetPassword');
});

Route::get('/home', 'HomeController@index');



Route::post('/logout', 'LoginController@logout');

Route::get('/dashboard', 'AdminController@dashboard')->middleware('admin');

Route::get('/services', 'ServicesController@services');

Route::get('/reports', 'ReportsController@index')->middleware('manager');

Route::get('/activate/{email}/{activationCode}', 'ActivationController@activate');
