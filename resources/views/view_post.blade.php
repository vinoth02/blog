@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('View Post') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    

                   

                    <div class="p-2" style="text-align:right">

                        <a href="{{ route('home')}}" class="btn btn-primary "> View Post </a>
                       <!--  <button class="btn btn-primary "  type="button" data-toggle="modal" data-target="#myModal">Add Post</button> -->
                    </div>

             


                 <div >
                     <h3 class="p-2" > {{ $post->title}}</h3>
                                     
                    
                    <h4 class="p-3" >   {{ $post->post}}  </h4>
                 </div>
                    
                    
                        
               </div>
               
            </div>
        </div>
    </div>
</div>




@endsection

