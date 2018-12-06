<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class SanPham extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('SanPham', function ($table) {
            $table->increments('id_SP');
            $table->integer('id_CD')->unsigned();
            $table->foreign('id_CD')->references('id_CD')->on('ChuDe');
            $table->integer('id_TH')->unsigned();
            $table->foreign('id_TH')->references('id_TH')->on('ThuongHieu');
            $table->string('TenSP');
            $table->text('MoTaSP')->nullable();
            $table->string('ImgSP')->nullable();
            $table->float('GiaSP');
            $table->float('GiaSale')->nullable();
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
        Schema::dropIfExists('SanPham');
    }
}
