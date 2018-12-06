<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class giohang extends Model
{
    protected $table = "giohang";

    //lien ket bang sanpham
    public function sanpham(){
    	return $this->hasMany('App\sanpham','id_SP','id_SP');
    }
    //lien ket bang khachhang
    public function khachhang(){
    	return $this->belongsTo('App\khachhang','id_KH','id_KH');
    }
}
