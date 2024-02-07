<?php

namespace App\Http\Controllers\Admin;

use App\Models\Cases;
use App\Models\Product;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class AdminCaseController extends Controller
{
    public function clientCases(){
        $email = Auth::user()->email;
    echo "logged-in user email address:".$email;
        $viewData=[];
        $viewData["title"] = "Created Cases";
        $viewData["cases"] = Cases::where('email', '=',$email)->get();
        return view('admin.case.index')->with("viewData",$viewData);

    }
    public function index(){
        $email = Auth::user()->email;
        echo "logged-in user email address:".$email;
        $viewData=[];
        $viewData["title"] = "Created Cases";
        $viewData["cases"] = Cases::all();
       // $viewData["cases"] = Cases::where('email', 'like %',$email)->get();
        return view('admin.case.index')->with("viewData",$viewData);

    }

    public function create(){
        $viewData=[];
        $viewData["title"] = "Create New Case";
        return view('admin.case.create')->with("viewData",$viewData);
    }
public function save(Request $request){
    Cases::validate($request);
    $newCase=new Cases();
    $newCase->case_type=$request->input('case_type');
    $newCase->case_description=$request->input('case_description');
    $newCase->email=$request->input('email');
    $newCase->case_status='Pending';
    $newCase->save();

        // if( $request->hasFile('image') ){
        //     $imageName = $newProduct->id.'.'.$request->file('image')->extension();
        //     Storage::disk('public')->put($imageName,
        //                     file_get_contents($request->file('image')->getRealPath()));
        //     $newProduct->image = $imageName;
        //     $newProduct->save();
        // }
        return redirect()->route('admin.case.index');
        //return redirect()->route('admin.case.clientCases',['email'=>$request->input('email')]);

    }
        public function delete($id){
            Cases::destroy($id);
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
