<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class chitietdonhang extends Model
{
    protected $table = "chitietdonhang";
    //lien ket bang sanpham
    public function sanpham(){
    	return $this->belongsTo('App\sanpham','id_SP','id_CTDH');
    }
    //lien ket bang dondathang
    public function dondathang(){
    	return $this->belongsTo('App\dondathang','id_Bill','id_CTDH');
    }
}
