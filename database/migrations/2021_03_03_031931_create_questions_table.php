<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQuestionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('questions', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('survey_id')->unsigned()->index();
           // $table->unsignedBigInteger('user_id')->unsigned()->index();
            $table->string('question');
            $table->softDeletes();
            $table->timestamps();
            
            $table->foreign('survey_id')
            ->references('id')->on('surveys')
             ->onDelete('cascade');
             
           
           
            //$table->foreign('user_id')
            //->references('id')->on('users')
             //->onDelete('cascade');
       
       
       
       
       
       
       
       
       
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('questions');
    }
}
