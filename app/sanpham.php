<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class sanpham extends Model
{
    protected $table ="sanpham";
    //lien ket bang thuonghieu
    public function thuonghieu(){
    	return $this->belongsTo('App\thuonghieu','id_TH','id_SP');
    }
    //lien ket bang chude
    public function chude(){
    	return $this->belongsTo('App\chude','id_CD','id_SP');
    }
    //lien ket bang comment
    public function comment(){
    	return $this->hasMany('App\comment','id_SP','id_SP');
    }
    //lien ket bang thuoctinh
    public function thuoctinh(){
    	return $this->hasMany('App\thuoctinh','id_SP','id_SP');
    }
    //lien ket bang chitietdonhang
    public function chitietdonhang(){
        return $this->hasMany('App\chitietdonhang','id_SP','id_SP');
    }
}
