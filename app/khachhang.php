<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class khachhang extends Model
{
    protected $table = "khachhang";
    //lien ket bang comment
    public function comment(){
    	return $this->hasMany('App\comment','id_KH','id_KH');
    }
    //lien ket bang dondathang
    public function dondathang(){
    	return $this->hasMany('App\dondathang','id_KH','id_KH');
    }
}
