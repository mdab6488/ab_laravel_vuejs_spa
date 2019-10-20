<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateReviewsTable extends Migration
{
	/**
	 * Run the migrations.
	 */
	public function up()
	{
		Schema::create('reviews', function (Blueprint $table) {
			$table->bigIncrements('id');
			$table->string('name', 60)->nullable()->default('Jon Doe');
			$table->text('description')->nullable()->default('Good Work');
			$table->string('avater', 100)->nullable()->default('https://placeimg.com/90/90/any');
			$table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 */
	public function down()
	{
		Schema::dropIfExists('reviews');
	}
}
