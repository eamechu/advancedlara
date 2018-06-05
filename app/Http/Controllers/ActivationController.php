<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Activation;
use Sentinel;
use App\User;

class ActivationController extends Controller
{
    public function activate($email, $activationCode){

    	//Eloquent user does not implement user interface to complete Activation
    	$user = User::whereEmail($email)->first();

    	//Sentinel User Implements user interface that completes the Activation
    	$sentinelUser = Sentinel::findById($user->id);

    	if(Activation::complete($sentinelUser, $activationCode)){
    		return redirect('/login');
    	}else{

    	}

    }

}
