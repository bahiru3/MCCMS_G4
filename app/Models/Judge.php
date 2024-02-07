<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Judge extends Model
{
    use HasFactory;
    protected $table='judge';
    protected $primeryKey   = 'id';
    protected $fillable = [
        'judge_name',
    ];
public function Cases(){
    return $this->hasMany('App\Models\Cases');
}
public function Court(){
    return $this->hasMany('App\Models\Court');
}
}
