<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\giohang;
use App\dondathang;
use App\chitietdonhang;
use App\khachhang;
use App\sanpham;

class DondathangController extends Controller
{
    public function getDanhsach(){
    	$dondathang = dondathang::all();
    	$khachhang = khachhang::all();
    	return view('admin.dondathang.danhsach',['dondathang'=>$dondathang,'khachhang'=>$khachhang]);
    }
    public function getXem($id_Bill){
        $bill = dondathang::where('id_Bill',$id_Bill)->first();
    	$khachhang = khachhang::where('id_KH',$bill->id_KH)->first();
        $sanpham = sanpham::all();
        $ctdh =chitietdonhang::where('id_Bill',$id_Bill)->get();
    	
    	return view('admin.dondathang.xem',['khachhang'=>$khachhang,'sanpham'=>$sanpham,'ctdh'=>$ctdh]);
    }
    // public function giaohang($id_Bill)
    // {
    // 	return '123';
    // }
}
