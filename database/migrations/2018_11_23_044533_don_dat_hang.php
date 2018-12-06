<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class DonDatHang extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('DonDatHang', function ($table) {
            $table->increments('id_Bill');
            $table->integer('id_KH')->unsigned();
            $table->foreign('id_KH')->references('id_KH')->on('KhachHang');
            $table->double('TongTien');
            $table->string('Payment');
            $table->text('TinNhanKH')->nullable();
            $table->boolean('TrangThai');
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
        Schema::dropIfExists('DonDatHang');
    }
}
