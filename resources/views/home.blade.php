@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    

                    @if(Auth::user()->role_id == 1)

                    <div class="p-2" style="text-align:right">

                        <a href="{{ route('post.create')}}" class="btn btn-primary "> Add Post </a>
                       <!--  <button class="btn btn-primary "  type="button" data-toggle="modal" data-target="#myModal">Add Post</button> -->
                    </div>

                    @endif

                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>S.no</th>
                                <th>Tiitle</th>
                                <th>Created</th>
                                @if(Auth::user()->role_id == 1)
                                <th>Action</th>
                               @endif
                            </tr>
                        </thead>
                        <tbody>
                        @php $i = 1; @endphp
                        @foreach($post as $post_list)

                            <tr>
                                <td> {{$i}} </td>
                                <td>
                                    <a href="{{ route('post.view', $post_list->id )}}" class="p-1">{{$post_list->title}}
                                    </a>
                                </td>
                                <td>{{$post_list->created_at}}</td>
                                <td> 
                                   
                                @if(Auth::user()->role_id == 1)
                                
                                    <a href="{{ route('post.edit', $post_list->id )}}" class="p-1">Edit</a>
                                    <a href="{{ route('post.destroy', $post_list->id )}}" class="p-1">Delete</a>
                                
                                @endif
                                </td>
                            </tr>
                        @php $i++; @endphp
                        @endforeach
                        </tbody>

                        
                    </table>

                </div>
                <div class="p-2" align="right">
                    {{$post->links('pagination::bootstrap-4')}}
                </div>
                
            </div>
        </div>
    </div>
</div>

<!-- <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">-->
    
      <!-- Modal content-->
    <!--  <div class="modal-content">
        <div class="modal-header">
        <h4 class="modal-title">Add Post</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
          <form action="{{ route('post.store')}}" method="post">
            @csrf
          <div class="form-group">
            <label for="email">Title:</label>
                <input type="text" name="title" class="form-control" id="title" placeholder="Enter Title">
        </div>
        <div class="form-group">
            <label for="pwd">Post:</label>
                <textarea name="post" id="" cols="60" rows="4" class="form-control"></textarea>
                
        </div>
        
            <button type="submit" class="btn btn-success">Submit</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>

  <div class="modal fade" id="myModaledit" role="dialog">
    <div class="modal-dialog">-->
    
      <!-- Modal content-->
    <!--  <div class="modal-content">
        <div class="modal-header">
        <h4 class="modal-title">Update Post</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
          <form action="{{ route('post.update')}}" method="post">
            @csrf
          <div class="form-group">
            <label for="email">Title:</label>
                <input type="text" name="title" class="form-control" id="title" id="post_title" placeholder="Enter Title">
        </div>
        <div class="form-group">
            <label for="pwd">Post:</label>
                <textarea name="post" id="" cols="60" rows="4" id="post_post" class="form-control"></textarea>
                
        </div>
        
            <button type="submit" class="btn btn-success">Update</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>


  <script type="text/javascript">
    
       function get_edit(data) {
            $.ajax({
                url : "{{ route('post.edit',"data")}}",
                type: "get",
                dataType:'json',
                success:function(data)
                {
                    $("#post_title").val('data.title');
                    $("#post_post").val('data.post');

                    console.log(data.title);
                }


            });

        }
</script> -->


@endsection

