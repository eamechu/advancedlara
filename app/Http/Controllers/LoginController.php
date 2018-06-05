<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Sentinel;
use Cartalyst\Sentinel\Checkpoints\ThrottlingException;
use Cartalyst\Sentinel\Checkpoints\NotActivatedException;

class LoginController extends Controller
{
    public function login(){
    	return view('authentication.login');
    }

    public function postLogin(Request $request){

       try{

        $rememberMe = false;

        if(isset($request->remember_me))
        $rememberMe = true;

         if (Sentinel::authenticate($request->all(),$rememberMe)){
            return redirect('/home');
         } 
         else{
            return redirect()->back()->with(['error' => 'Invalid username/Password combination']);
         } 

       //Handle Errors
       } catch (ThrottlingException $e){
            //Get user ban delay for more than five invalid logins from the same host IP
            $delay = $e->getDelay();
            return redirect()->back()->with(['error' => "You are banned for $delay seconds."]);
       } catch(NotActivatedException $e) {
            return redirect()->back()->with(['error' => "Sorry, Your account has not been activated yet. Please login to your email and activate your account and then try again!"]);
       }

    }

    public function logout(){
    	Sentinel::logout();
    	return redirect('/login');
    }

}
