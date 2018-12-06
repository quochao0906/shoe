<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ThuocTinh extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ThuocTinh', function ($table) {
            $table->increments('id_ThuocTinh');
            $table->integer('id_SP')->unsigned();
            $table->foreign('id_SP')->references('id_SP')->on('SanPham'); 
            $table->string('KichThuoc')->nullable();
            $table->integer('SoLuong')->nullable();
            $table->string('MauSac')->nullable();
            $table->string('list_img')->nullable();   
            $table->timestamps();

            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ThuocTinh');
    }
}
