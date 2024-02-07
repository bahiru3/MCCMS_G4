@extends('layouts.admin')
@section('title',$viewData['title'])
@section('content')
    <div class="card-header">
        Manage Users
    </div>
        <div class="card">
            {{-- <div class= "card-body">
                <div>
                    <a href="{{ route('admin.role.create')}}">
                        <button type="button" class="btn btn-primary float-end">
                            Create User
                        </button>
                    </a>
                </div> --}}
                <table class= "table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th scope="col">User Id</th>
                            <th scope="col">User Name</th>
                            <th scope="col">E-Mail</th>
                            <th scope="col">Granted Role</th>
                            <th scope="col">Account Balance</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($viewData['users'] as $user)
                            <tr>
                                <td>{{$user->id}}</td>
                                <td>{{$user->name}}</td>
                                <td>{{$user->email}}</td>
                                <td>{{$user->role->role}}</td>
                                <td>{{$user->balance}}</td>
                                <td>
                                    <a href="{{ route('admin.role.edit',['id' => $user->id]) }}">
                                            <button class="btn btn-primary">
                                              <i class="bi-pencil"></i>
                                            </button>
                                    </a>
                                </td>
                                <td>
                                    <form action="{{ route('admin.role.delete',$user->id) }}" method="POST">
                                        @csrf
                                        @method('DELETE')
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
