<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ChuDe extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ChuDe', function ($table) {
            $table->increments('id_CD'); 
            $table->integer('id_TH')->unsigned();
            $table->foreign('id_TH')->references('id_TH')->on('ThuongHieu');
            $table->string('TenCD');
            
        });    
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ChuDe');
    }
}
