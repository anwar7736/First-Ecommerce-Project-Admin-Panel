<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrderLinesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if(!Schema::hasTable('order_lines'))
        {
            Schema::create('order_lines', function (Blueprint $table) {
                $table->id();
                $table->foreignId('order_id')->constrained('orders')->onDelete('cascade');
                $table->foreignId('productlist_id')->constrained('productlist')->onDelete('cascade');
                $table->decimal('price', 16, 2);
                $table->string('size')->nullable();
                $table->string('color')->nullable();
                $table->decimal('quantity', 16, 2);
                $table->decimal('discount', 16, 2);
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
        Schema::dropIfExists('order_lines');
    }
}
