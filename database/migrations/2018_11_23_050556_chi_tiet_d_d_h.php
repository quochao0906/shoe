<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ChiTietDDH extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ChiTietDonHang', function ($table) {
            $table->increments('id_CTDH');
            $table->integer('id_Bill')->unsigned();
            $table->foreign('id_Bill')->references('id_Bill')->on('DonDatHang');
            $table->integer('id_SP')->unsigned();
            $table->foreign('id_SP')->references('id_SP')->on('SanPham');
            $table->integer('SoLuong'); 
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
        Schema::dropIfExists('ChiTietDonHang');
    }
}
