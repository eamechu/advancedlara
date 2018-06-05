<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Sentinel;

class HomeController extends Controller
{
    public function index(){

    	if (Sentinel::check()) {
    		$uname = Sentinel::getUser()->first_name;
    	} else {
    		$header = 'Advanced Laravel';
    	}
    	
    	return view('home', compact('uname','header'));
    }

}
