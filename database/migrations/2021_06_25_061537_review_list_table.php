<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ReviewListTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('review_list', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('reviewer_id');
            $table->string('product_code');
            $table->string('reviewer_photo')->nullable();
            $table->string('reviewer_name');
            $table->string('reviewer_rating');
            $table->string('reviewer_comments');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('review_list');
    }
}
