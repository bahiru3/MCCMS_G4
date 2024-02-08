@extends('layouts.app')
@section('title', $viewData['title'])
@section('content')
   <div class="card mb-4">
       <div class="card-header"> <h3> Create lowyer</h3> </div>
       <div class="card-body">
           @if ($errors->any())
               <ul class="alert alert-danger list-unstyled">
                   @foreach ($errors->all() as $error)
                       <li>* {{ $error }}</li>
                   @endforeach
               </ul>
           @endif
           <form method="POST" action="{{ route('admin.lowyer.save') }}" enctype="multipart/form-data">

               @csrf
               <div class="row">
                   <div class="col">

                       <div class="mb-3 row">
                           <label class="col-lg-2 col-md-6 col-sm-12 col-form-label">Case Type:</label>
                           <div class="col-lg-10 col-md-6 col-sm-12">
                               <select  id="case_type" class="form-control form-select @error('caseType') is-invalid @enderror" name="case_type">
                                <option value="Select Case Type" selected>Select Case Type</option>
                                <option value="disciplen">Disciplen</option>
                                <option value="criminal">Criminal</option>
                                <option value="murder">Murder</option>
                            </select>

                           </div>
                       </div>
                       <div class="mb-3">
                            <label class="form-label">Case Description</label>
                            <textarea class="form-control" name="case_description" rows="3" value="case_description" >{{ old('case_description') }}</textarea>
                       </div>
                       <div class="mb-3">
                            <label class="form-label">E-Mail Address</label>
                            <input name="email" value="{{ old('email') }}" type="text" class="form-control">
                        </div>
                   </div>
                   {{-- <div class="col">
                       <div class="mb-3 row">
                           <label class="col-lg-2 col-md-6 col-sm-12 col-form-label">Price:</label>
                           <div class="col-lg-10 col-md-6 col-sm-12">
                               <input name="price" value="{{ old('price') }}" type="number" class="form-control">
                           </div>
                       </div>
                   </div> --}}
               </div>
               {{-- <div class="row">
                   <div class="col">
                       <div class="mb-3 row">
                           <label class="col-lg-2 col-md-6 col-sm-12 col-form-label">Image:</label>
                           <div class="col-lg-10 col-md-6 col-sm-12">
                               <input class="form-control" type="file" name="image">
                           </div>
                       </div>
                   </div>
                   <div class="col"> &nbsp;
                   </div>
               </div> --}}

               <button type="submit" class="btn btn-primary">Submit</button>
           </form>
       </div>
   </div>
@endsection

