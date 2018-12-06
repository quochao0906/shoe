<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Comment extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Comment', function ($table) {
            $table->increments('id_Cmt');
            $table->integer('id_KH')->unsigned();
            $table->foreign('id_KH')->references('id_KH')->on('KhachHang');
            $table->integer('id_SP')->unsigned();
            $table->foreign('id_SP')->references('id_SP')->on('SanPham');
            $table->text('NoiDung');
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
        Schema::dropIfExists('Comment');
    }
}
