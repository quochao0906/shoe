<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Giohang extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('GioHang', function ($table) {
            $table->increments('id_GH');
            $table->integer('id_SP')->unsigned();
            $table->integer('id_KH')->unsigned();
            $table->integer('SoLuong')->nullable();
            $table->double('Gia')->nullable();   
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
        Schema::dropIfExists('GioHang');
    }
}
