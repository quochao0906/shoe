<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class KhachHang extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('KhachHang', function ($table) {
            $table->increments('id_KH'); 
            $table->string('HoTenKH');
            $table->string('TenTK');
            $table->string('MatKhau');
            $table->date('NgaySinhKH')->nullable(); 
            $table->string('EmailKH')->nullable(); 
            $table->string('DienThoaiKH')->nullable() ;
            $table->string('DiaChiKH')->nullable();
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
        Schema::dropIfExists('KhachHang');
    }
}
