@extends('layouts.app')
@section('title',$viewData['title'])
@section('content')
    <div class="card-header">
        <h2> Created Lowyer</h2>
    </div>
        <div class="card">
            <div class= "card-body">
                <div>
                    <a href="{{ route('admin.lowyer.create')}}">
                        <button type="button" class="btn btn-primary float-end">
                            create lowyer
                        </button>
                    </a>
                </div>
                <table class= "table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">lowyer Type</th>
                            <th scope="col">lowyer Description</th>
                            <th scope="col">lowyer Status</th>
                            <th scope="col">lowyer Created Date</th>
                            {{-- <th scope="col">Edit</th>
                            <th scope="col">Delete</th> --}}
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($viewData['lowyer'] as $case)
                            <tr>
                                <td>{{$lowyer->id}}</td>
                                <td>{{$lowyer->lowyer_type}}</td>
                                <td>{{$lowyer->lowyer_description}}</td>
                                <td>{{$lowyer->lowyer_status}}</td>
                                <td>{{$lowyer->created_at}}</td>
                                {{--@if(Auth::user()->role->role=='admin')
                                    <a href="{{ route('admin.lowyer.edit',['id' => $lowyer->id]) }}">
                                            <button class="btn btn-primary">
                                              <i class="bi-pencil"></i>
                                            </button>
                                    </a>
                                </td>
                                <td>
                                  <form action="{{ route('admin.lowyer.delete',$case->id) }}" method="POST">
                                        @csrf
                                        @method('DELETE')
                                        <button class="btn btn-danger">
                                            <i class="bi-trash"></i>
                                        </button>
                                    </form>
                                 @endif

                                </td> --}}
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
@endsection
