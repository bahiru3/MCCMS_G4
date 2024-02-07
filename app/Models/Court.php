<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Court extends Model
{
    use HasFactory;
    public static function validate($request){
        $request->validate([
           // "case_description"=>"required|max:2000",
          //  "case_status"=> "required",
            // "case_type"=> "required",
           //"email"=> "required",
        ]);
    }
    use HasFactory;

    protected $table='court';

    protected $primeryKey   = 'id';

    protected $fillable = [
        'court_name',
    ];

    public function Cases(){
        return $this->hasMany('App\Models\Cases');
    }
    public function Judge(){
        return $this->hasMany('App\Models\Judge');
    }
}
