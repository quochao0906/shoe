<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class thuonghieu extends Model
{
    protected $table = "thuonghieu";
    public $timestamps = false;
    //lien ket bang chude
    public function chude(){
    	return $this->hasMany('App\chude','id_TH','id_TH');
    }
    //lien ket bang sanpham
    public function sanpham(){
    	return $this->hasMany('App\sanpham','id_TH','id_TH');
    }
}
