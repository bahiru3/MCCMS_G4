@extends('layouts.admin')
@section('title',$viewData['title'])
@section('content')
    <div class="card-header">
        <h2> Created lowyer</h2>
    </div>
        <div class="card">
            <div class= "card-body">
                {{-- <div>
                    <a href="{{ route('admin.lowyer.create')}}">
                        <button type="button" class="btn btn-primary float-end">
                            create Case
                        </button>
                    </a>
                </div> --}}
                <table class= "table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Case Type</th>
                            <th scope="col">Case Description</th>
                            <th scope="col">Case Status</th>
                            <th scope="col">Case Created Date</th>
                            <th scope="col">Asign Judge</th>
                            <th scope="col">Court</th>
                            <th scope="col">Manage</th>
                            <th scope="col">Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($viewData['lowyer'] as $lowyer)
                            <tr>
                                <td>{{$case->id}}</td>
                                <td>{{$case->case_type}}</td>
                                <td>{{$case->case_description}}</td>
                                <td>{{$case->case_status}}</td>
                                <td>{{$case->created_at}}</td>
                                <td>{{$case->judge_name}}</td>
                                <td>{{$case->court_name}}</td>


                                 @if(Auth::user()->role->role=='admin')
                                    <td>
                                        <a href="{{ route('admin.lowyer.edit',['id' => $case->id]) }}">
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

                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
@endsection
