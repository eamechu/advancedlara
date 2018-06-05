<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Reminder;
use Mail;
use Sentinel;

class ForgotPasswordController extends Controller
{
    public function forgotPassword(){
    	return view('authentication.forgot-password');
    }

    public function postForgotPassword(Request $request){
    	//Eloquent user does not implement user interface to complete Activation
    	$user = User::whereEmail($request->email)->first();

    	//Sentinel User Implements user interface that completes the Activation
    	$sentinelUser = Sentinel::findById($user->id);

    	if(count($user) == 0)
    		return redirect()->back()->with([
    			'success' => 'Password Reset code was sent to your email.'
    		]);

    	$reminder = Reminder::exists($sentinelUser) ?: Reminder::create($sentinelUser);

    	$this->sendEmail($user, $reminder->code);

    	return redirect()->back()->with([
    			'success' => 'Password Reset code was sent to your email.'
    		]);

    }

    private function sendEmail($user, $code){
        Mail::send('emails.forgot-password', [
            'user' => $user,
            'code' => $code
        ], function($message) use ($user) {
            $message->to($user->email);
            $message->subject("Hello $user->first_name, reset your password.");
        });
    }

    public function resetPassword($email, $resetCode){
    	
    	$user = User::byEmail($email);
    	$sentinelUser = Sentinel::findById($user->id);

    	//Check if user exists
    	if(count($user) == 0)
    		abort(404);

    	//Check if resetCode exists
    	if($reminder = Reminder::exists($sentinelUser))
    		if($resetCode == $reminder->code)
    			return view('authentication.passwordreset');
    		else
    			return redirect('/home');
    	else

    		return redirect('/home');
    }

    public function postResetPassword(Request $request, $email, $resetCode){

    	$this->validate($request, [
    		'password' => 'confirmed|required|min:5',
    		'password_confirmation' => 'required|min:5'
    	]);

    	$user = User::byEmail($email);
    	$sentinelUser = Sentinel::findById($user->id);

    	//Check if user exists
    	if(count($user) == 0)
    		abort(404);

    	//Check if resetCode exists
    	if($reminder = Reminder::exists($sentinelUser))
    		
    		if($resetCode == $reminder->code){
    			
    			Reminder::complete($sentinelUser, $resetCode, $request->password);
    			return redirect('/login')->with(['success' => 'Please login with your new Password']);

    		}
    		else {
    			return redirect('/home');
    		}
    	else
    		
    		return redirect('/home');
    }

}
