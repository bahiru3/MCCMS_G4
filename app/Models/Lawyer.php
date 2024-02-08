<?php

namespace App\Models;

use Illuminate\Database\Migrations\Migration;
   use Illuminate\Database\Schema\Blueprint;
   use Illuminate\Support\Facades\Schema;

   class CreateLawyerTable extends Migration
   {
    use HasFactory;
    protected $table='lowyer';
    protected $primeryKey   = 'id';
    protected $fillable = [
        'lowyer_name',
    ];
       
    public function Cases(){
        return $this->hasMany('App\Models\Cases');
    }
    public function Court(){
        return $this->hasMany('App\Models\Court');
    }
    public function Lowyer(){
        return $this->hasMany('App\Models\Lowyer');
    }
       // ...

   }