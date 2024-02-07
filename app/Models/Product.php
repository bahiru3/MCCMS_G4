<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use HasFactory;

    public static function validate($request){
        $request->validate([
            "name"=>"required|max:255",
            "description"=> "required",
            "price"=>"required|numeric|gt:0",
            'image'=>'image',
        ]);
    }
    public static function sumPricesByQuantities($products,$productInSession){
        $tolal=0;
        foreach($products as $product){
            $tolal= $tolal + ($product->getPrice() * $productInSession[$product->getId()]);
      }
      return $tolal;
}
public  function getPrice(){
   return $this->price;
  }
  public  function getId(){
    return $this->id;
   }
   public  function items(){
    return $this->hasMany(Item::class);
   }
}
