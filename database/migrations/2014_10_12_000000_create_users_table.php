<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password')->nullable();
            $table->string('phone')->nullable();
            $table->boolean('is_admin')->nullable();
            
            $table->string('google_id')->nullable(); // login with google

            // role control ========> niceher sob side bar er admin er
            $table->integer('role_admin')->nullable();
            $table->integer('category')->default(0)->nullable();
            $table->integer('product')->default(0)->nullable();
            $table->integer('offer')->default(0)->nullable();
            $table->integer('order')->default(0)->nullable();
            $table->integer('blog')->default(0)->nullable();
            $table->integer('pickup')->default(0)->nullable();
            $table->integer('ticket')->default(0)->nullable();
            $table->integer('contact')->default(0)->nullable();
            $table->integer('report')->default(0)->nullable();
            $table->integer('setting')->default(0)->nullable();
            $table->integer('userrole')->default(0)->nullable();


            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
