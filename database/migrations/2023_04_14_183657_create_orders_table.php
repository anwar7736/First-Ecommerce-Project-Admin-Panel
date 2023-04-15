<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if(!Schema::hasTable('orders'))
        {
            Schema::create('orders', function (Blueprint $table) {
                $table->id();
                $table->foreignId('user_id')->constrained('users')->onDelete('cascade');
                $table->string('invoice_no');
                $table->string('name');
                $table->string('phone');
                $table->text('address');
                $table->decimal('total_amount', 16, 2);
                $table->decimal('total_discount', 16, 2);
                $table->decimal('delivery_charge', 16, 2);
                $table->decimal('final_amount', 16, 2);
                $table->string('payment_method');
                $table->string('payment_status')->nullable()->default('unpaid');
                $table->string('status')->nullable()->default('pending');
                $table->timestamps();
            });
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders');
    }
}
