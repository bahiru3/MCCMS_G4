@extends('layouts.admin')
@section('title',$viewData['title'])
@section('content')
    <div class="card-header">
        Manage Products
    </div>
        <div class="card">
            <div class= "card-body">
                <div>
                    <a href="{{ route('admin.product.create')}}">
                        <button type="button" class="btn btn-primary float-end">
                            create Product
                        </button>
                    </a>
                </div>
                <table class= "table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Name</th>
                            <th scope="col">Edit</th>
                            <th scope="col">Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($viewData['products'] as $product)
                            <tr>
                                <td>{{$product->id}}</td>
                                <td>{{$product->name}}</td>
                                <td>
                                    <a href="{{ route('admin.product.edit',['id' => $product->id]) }}">
                                            <button class="btn btn-primary">
                                              <i class="bi-pencil"></i>
                                            </button>
                                    </a>
                                </td>
                                <td>
                                    <form action="{{ route('admin.product.delete',$product->id) }}" method="POST">
                                        @csrf
                                        @method('POST')
                                        <button class="btn btn-danger">
                                            <i class="bi-trash"></i>
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
@endsection
