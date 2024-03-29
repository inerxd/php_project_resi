<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;


class CreateSurveysTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('surveys', function (Blueprint $table) {
            $table->id();
            $table->string('title');

            $table->string('description');

            $table->unsignedBigInteger('user_id')->nullable()->index();
        
            $table->timestamps();
            
            
            $table->foreign('user_id')
            ->references('id')->on('users')
            ->onDelete('cascade');
            $table->dropForeign(['user_id']);
          
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('surveys');
    }
}
