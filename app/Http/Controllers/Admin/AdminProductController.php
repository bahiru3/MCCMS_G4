<?php

namespace App\Http\Controllers\Admin;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;

class AdminProductController extends Controller
{
       public function index(){
        $viewData=[];
        $viewData["title"] = "Admin Page -Admin - Online Store ";
        $viewData["products"] = Product::all();
        return view('admin.product.index')->with("viewData",$viewData);

    }
    public function create(){
        $viewData=[];
        $viewData["title"] = "Admin - Product - Online Store";
        return view('admin.product.create')->with("viewData",$viewData);
    }
public function store(Request $request){
    Product::validate($request);
    $newProduct=new Product();
    $newProduct->name=$request->input('name');
    $newProduct->description=$request->input('description');
    $newProduct->price=$request->input('price');
    // $newProduct->image=$request->input('image');
    $newProduct->image='game.png';
    $newProduct->save();

        if( $request->hasFile('image') ){
            $imageName = $newProduct->id.'.'.$request->file('image')->extension();
            Storage::disk('public')->put($imageName,
                            file_get_contents($request->file('image')->getRealPath()));
            $newProduct->image = $imageName;
            $newProduct->save();
        }
        return redirect()->route('admin.product.index');

    }
        public function delete($id){
            Product::destroy($id);
            return back();
            // ->with('success','Succees Deletion!');

    }
    public function edit($id){
        $viewData=[];
        $viewData["title"] = "Admin Page -Admin - Online Store ";
        $viewData["product"] = Product::findOrFail($id);
        return view('admin.product.edit')->with("viewData",$viewData);
    }
    public function update(Request $request,$id){
        Product::validate($request);
        $product=Product::findOrFail($id);
        $product->name=$request->input('name');
        $product->description=$request->input('description');
        $product->price=$request->input('price');
        $product->image='game.png';
        $product->save();
            if( $request->hasFile('image') ){
                $imageName = $product->id.'.'.$request->file('image')->extension();
                Storage::disk('public')->put($imageName,file_get_contents($request->file('image')->getRealPath()));
                $product->image = $imageName;
            }
            $product->save();
            return redirect()->route('admin.product.index');

        }

}
