<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DondathangController extends Controller
{
    public function getDanhsach(){
    	return view('admin.dondathang.danhsach');
    }
}
