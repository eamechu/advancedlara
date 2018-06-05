<?php

namespace App\Http\Middleware;

use Closure;
use Sentinel;

class ManagerMiddeware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
       //Conditions for Access
        //1. User should be authentication
        //2. User should be an admin
        if((Sentinel::check() && Sentinel::getUser()->roles()->first()->slug == 'admin') || (Sentinel::check() && Sentinel::getUser()->roles()->first()->slug == 'manager'))
            return $next($request);
        else
            return redirect('/home');

    }
}
