@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Add Post') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    

                    @if(Auth::user()->role_id == 1)

                    <div class="p-2" style="text-align:right">

                        <a href="{{ route('home')}}" class="btn btn-primary "> View Post </a>
                       <!--  <button class="btn btn-primary "  type="button" data-toggle="modal" data-target="#myModal">Add Post</button> -->
                    </div>

                    @endif


                    @if ($errors->any())
			        <div class="alert alert-danger">
			            <strong>Error!</strong> 
			            <ul>
			                @foreach ($errors->all() as $error)
			                    <li></li>
			                @endforeach
			            </ul>
			        </div>
			    @endif

                   <form action="{{ route('post.store')}}" method="post">
            @csrf
          <div class="form-group">
            <label for="email">Title:</label>
                <input type="text" name="title" class="form-control" id="title" placeholder="Enter Title">
        </div>
        <div class="form-group">
            <label for="pwd">Post:</label>
                <textarea name="post" id="" cols="60" rows="4" class="form-control" ></textarea>
                
        </div>
        
            <button type="submit" class="btn btn-success">Submit</button>
          </form>
                </div>
            </div>
        </div>
    </div>
</div>



  


  


@endsection

