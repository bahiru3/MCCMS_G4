<?php


namespace App\Http\Controllers;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Console\View\Components\Alert;

class ProductController extends Controller
{
   public static $products = [
       ["id" => "1", "name" => "TV", "description" => "Best TV", "image" => "game.png", "price" => "1000"],
       ["id" => "2", "name" => "iPhone", "description" => "Best iPhone", "image" => "safe.png", "price" => "999"],
       ["id" => "3", "name" => "Chromecast", "description" => "Best Chromecast", "image" => "submarine.png", "price" => "30"],
       ["id" => "4", "name" => "Glasses", "description" => "Best Glasses", "image" => "game.png", "price" => "100"]
   ];
   public function index()
   {
       $viewData = [];
       $viewData["title"] = "Products - Online Store";
       $viewData["subtitle"] = "List of products";
       $viewData["products"] = Product::all();
       return view('products.index')->with("viewData", $viewData);
   }
   public function show($id)
   {
       $viewData = [];
       if($id>0){
            $product = Product::findOrFail($id);
            $viewData["title"] = $product["name"] . " - Online Store";
            $viewData["subtitle"] = $product["name"] . " - Product information";
            $viewData["product"] = $product;
            return view('products.show')->with("viewData", $viewData);
        }
        else {
            return redirect()->route('msg');
            //return redirect()->route('products.index');

        }
   }
//    public function msg(){
//        $viewMsg = [];
//        $viewMsg["title"] = "Online Store Services";
//        $viewMsg["msg"] = "Sorry we've not get you such product";
//        return view('msg')->with("viewMsg", $viewMsg);
//    }
}
