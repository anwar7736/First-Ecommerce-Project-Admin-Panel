<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CartListTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cart_list', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('user_id');
            $table->string('product_code');
            $table->string('product_name');
            $table->string('product_image');
            $table->string('product_color')->nullable();
            $table->string('product_size')->nullable();
            $table->string('unit_price');
            $table->string('product_quantity');
            $table->string('total_price');
            $table->string('shop_name');
            $table->string('shop_code');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('cart_list');
    }
}
