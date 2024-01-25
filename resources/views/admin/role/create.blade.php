@extends('layouts.admin')

@section('admin_content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>New Role</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item  ssss"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Add Product</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <!-- // For errore message  -->
    @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
 
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
      <form action="{{ route('store.role') }}" method="Post" enctype="multipart/form-data">
        @csrf
        <div class="row">

          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">New Role</h3>
              </div>
  
                <div class="card-body">


                <div class="row">
                    
                  <div class="form-group col">
                    <label for="exampleInputEmail1">Employee Name</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" name="name"  required="" value="{{ old('name') }}">
                  </div>
                  <div class="form-group col">
                    <label for="exampleInputEmail1">Employee Email</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" name="email"  required="" value="{{ old('code') }}">
                  </div>
                  <div class="form-group col">
                    <label for="exampleInputEmail1">Password</label>
                    <input type="password" class="form-control" id="exampleInputEmail1" name="password"  required="" value="{{ old('password') }}">
                  </div>


                  </div>


                  <div class="row">

                    <div class="col-3">
                        <h6>Category</h6>
                        <input type="checkbox" name="category" value="1" checked>
                    </div>
                    <div class="col-3">
                        <h6>Product</h6>
                        <input type="checkbox" name="product" value="1" checked>
                    </div>
                    <div class="col-3">
                        <h6>Offer</h6>
                        <input type="checkbox" name="offer" value="1" checked>
                    </div>
                    <div class="col-3">
                        <h6>Order</h6>
                        <input type="checkbox" name="order" value="1" checked>
                    </div>
                    <div class="col-3">
                        <h6>Blog</h6>
                        <input type="checkbox" name="blog" value="1" checked>
                    </div>
                    <div class="col-3">
                        <h6>Pickup</h6>
                        <input type="checkbox" name="pickup" value="1" checked>
                    </div>
                    <div class="col-3">
                        <h6>Ticket</h6>
                        <input type="checkbox" name="ticket" value="1" checked>
                    </div>
                    <div class="col-3">
                        <h6>Contact</h6>
                        <input type="checkbox" name="contact" value="1" checked>
                    </div>
                    <div class="col-3">
                        <h6>Report</h6>
                        <input type="checkbox" name="report" value="1" checked>
                    </div>
                    <div class="col-3">
                        <h6>Setting</h6>
                        <input type="checkbox" name="setting" value="1" checked>
                    </div>
                    <div class="col-3">
                        <h6>Userrole</h6>
                        <input type="checkbox" name="userrole" value="1" checked>
                    </div>

                  </div>



                

            <!-- /.card -->
            </div>
                <div class="card-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            <!-- /.card -->
          </div>
          <!--/.col (right) -->
        </div>
        </form>
        

        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>




@endsection
