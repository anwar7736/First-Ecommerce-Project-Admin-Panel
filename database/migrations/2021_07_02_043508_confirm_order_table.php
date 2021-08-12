<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ConfirmOrderTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('confirm_order', function (Blueprint $table) {
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
            $table->string('customer_city');
            $table->string('payment_method');
            $table->string('delivery_charge');
            $table->string('customer_name');
            $table->string('customer_mobile');
            $table->text('customer_address', 5000);
            $table->string('order_status');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('confirm_order');
    }
}
