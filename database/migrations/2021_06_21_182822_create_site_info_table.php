<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSiteInfoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('siteinfo', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('about', 5000);
            $table->text('purchase', 5000);
            $table->text('refund', 5000);
            $table->text('privacy', 5000);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('siteinfo');
    }
}
