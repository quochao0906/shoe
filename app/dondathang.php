<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class dondathang extends Model
{
    protected $table = "dondathang";
    //lien ket bang khachhang
    public function khachhang(){
    	return $this->belongsTo('App\khachhang','id_KH','id_Bill');
    }
    //lien ket bang chitietdonhang
    public function chitietdonhang(){
    	return $this->hasMany('App\chitietdonhang','id_Bill','id_Bill');
    }
}
