@extends('layouts.admin')

@section('admin_content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">All Products For Campaign</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <button class="btn btn-primary" data-toggle="modal" data-target="#categoryModal">+ Add New</button>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
        <!-- Main content -->
        <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">All Products For Campaign List Here</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-sm">
                  <thead>
                  <tr>
                    <th>SL</th>
                    <th>Name</th>
                    <th>Thumbnail</th>
                    <th>Code</th>
                    <th>Category </th>
                    <th>Brand</th>
                    <th>Price</th>
                    <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                    @foreach($products as $key=>$row)
                  <tr>
                    <td>{{ $key+1 }}</td>
                    <td>{{ $row->name }}</td>
                    <td>
                    <img src="{{ asset('public/files/product/'.$row->thumbnail) }}" width="32" height="32">
                    </td>
                    <td>{{ $row->code }}</td>
                    <td>{{ $row->category_name }}</td>
                    <td>{{ $row->brand_name }}</td>
                    <td>{{ $row->selling_price }}</td>

                    <td>

                        <a href="{{ route('category.delete',$row->id) }}" class="btn btn-danger btn-sm"><i class="fas fa-plus"></i></a>

                    </td>

                  </tr>

                  @endforeach
                 </tbody>
                </table>
              </div>
             </div>
            </div>
        </div>
    </div>
</section>

 </div>
 


<!-- Ajax use for edit Category  -->

<!-- //ajax cdn-----> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script>

  $('body').on('click','.edit', function(){
    let cat_id = $(this).data('id');
    // alert(cat_id);

    $.get("category/edit/" + cat_id, function(data){

      console.log(data);
      $('#e_category_name').val(data.category_name);
      $('#e_category_id').val(data.id);
      $('#e_category_home_page').val(data.home_page);
      $('#e_category_old_icon').val(data.old_icon);
      $('#e_category_old_icon').val(data.old_icon);
      $('#e_category_icon').val(data.icon);


    });
  });
  
</script>
    @endsection
