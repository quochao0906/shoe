<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Admin extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Admin', function ($table) {
            $table->increments('id_Ad');
            $table->string('HoTen');
            $table->string('Username');
            $table->string('Password');
            $table->date('NgaySinh')->nullable(); 
            $table->string('EmailKH')->nullable(); 
            $table->string('DienThoai')->nullable() ;
            $table->string('DiaChi')->nullable();
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
         Schema::dropIfExists('Admin');
    }

    public $timestamps = true;
}
