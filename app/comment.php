<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class comment extends Model
{
    protected $table = "comment";
    //lien ket bang sanpham
    public function sanpham(){
    	return $this->belongsTo('App\sanpham','id_SP','id_Cmt');
    }
    //lien ket bang khachhang
    public function khachhang(){
    	return $this->belongsTo('App\khachhang','id_KH','id_Cmt');
    }
}
