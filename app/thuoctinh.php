<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class thuoctinh extends Model
{
    protected $table = "thuoctinh";
    //lien ket bang sanpham
    public function sanpham(){
    	return $this->belongsTo('App\sanpham','id_SP','id_ThuocTinh');
    }
}
