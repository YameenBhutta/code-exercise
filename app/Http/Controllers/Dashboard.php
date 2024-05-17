<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;


class Dashboard extends Controller
{
    
    public function index(){
      
        $posts = Auth::user()->posts()->latest()->paginate(6);
       
    return view('dashboard', ['posts' => $posts]);
    }
}
