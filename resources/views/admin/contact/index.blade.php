@extends('layouts.admin')

@section('admin_content')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">pickup</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <button class="btn btn-primary" data-toggle="modal" data-target="#add_Modal">+ Add New</button>
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
                <h3 class="card-title">All Message List Here</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">

              <!-- // for yajra ytable = remove==> id example1 j tablestate datab tables banabo- classe ytable dwa niche etar script-->
                <table id="updatemodelform" class="table table-bordered table-sm ytable">
                  <thead>
                  <tr>
                    <th>SL</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Message</th>
                    <th>Status</th>
                    <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>

                  <!--  //for yajra ====> --remove foreach and btn> -->




                  </form>
                  	
                   
                
                 </tbody>
                </table>
              </div>
             </div>
            </div>
        </div>
    </div>
</section>

 </div>
 

    <!-- pickup insert Modal -->
<div class="modal fade" id="add_Modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog " role="document" >
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add New pickups</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <form action="" method="post" id="exampleModal"> 
        @csrf
    <div class="modal-body">


  <div class="form-group">
    <label for="pickup_point_name">Pickup Point Name</label>
    <input type="text" class="form-control" name="pickup_point_name" required="" id="pickup_point_name">
  </div>


  <div class="form-group">
    <label for="pickup_point_address">Pickup Point Address</label>
    <input type="text" class="form-control" name="pickup_point_address" required="" id="pickup_point_address">
  </div>


  <div class="form-group">
    <label for="pickup_point_phone">Pickup Point Phone</label>
    <input type="text" class="form-control" name="pickup_point_phone" required="" id="pickup_point_phone">
  </div>


  <div class="form-group">
    <label for="pickup_point_phone_two">Pickup Point Phone Two</label>
    <input type="text" class="form-control" name="pickup_point_phone_two" required="" id="pickup_point_phone_two">
  </div>

      </div>
      <div class="modal-footer">
      <button type="button" class="btn btn-danger modal_close" data-dismiss="modal"> Close</button>

        <button type="submit" class="btn btn-primary add_pickup" data-dismiss="modal"> <span class="loading d-none">Loading........</span> Submit</button>
      </div>
      </form>
    </div>
  </div>
</div>


<!-- View Modal====> -->
 <!-- Modal -->
 <div class="modal fade" id="viewModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Child Category</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <form action="" method="post" id="update_modal"> 
        @csrf
    <div class="modal-body">
    				
    <input type="hidden" id="up_id">


  <div class="form-group">
    <label for="pickup_point_name">Name</label>
    <input type="text" class="form-control" name="up_name" required="" id="up_name">
  </div>

  <div class="form-group">
    <label for="email">Email</label>
    <input type="text" class="form-control" name="up_email" required="" id="up_email">
  </div>


  <div class="form-group">
    <label for="pickup_point_address"> Phone</label>
    <input type="text" class="form-control" name="up_phone" required="" id="up_phone">
  </div>


  <div class="form-group">
    <label for="pickup_point_phone">Message</label>
    <textarea class="form-control" name="up_message" required="" id="up_message" cols="30" rows="10"></textarea>
  </div>

  <hr><hr>

  <div class="form-group">
    <label for="pickup_point_phone">Send Message</label>
    <textarea class="form-control" name="send_message" required="" id="send_message" cols="30" rows="10"></textarea>
  </div>




      </div>
      <div class="modal-footer">
      <button type="button" class="btn btn-danger modal_close" data-dismiss="modal"> Close</button>

        <button type="submit" class="btn btn-primary send_contact_message" data-dismiss="modal"> <span class="loading d-none">Loading........</span> Send Message</button>
      </div>
      </form>

      </div>
    </div>
  </div>
</div>

 <!-- For yajra datatables -------=============================------------- -->
<!-- Ajax use for edit Category  -->
<!-- //ajax cdn-----> 
 <!-- For yajra datatables -------=============================------------- -->

<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script> -->
<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
<script>
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});
</script>

<script>
  
 $(function childcategory(){
    // ei table take data table banalam
     var table = $('.ytable').DataTable({
        processing:true,
        serverSide:true,
        ajax:"{{ route('contact.index') }}",
        columns:[
            {data:'DT_RowIndex' ,name:'DT_RowIndex'},
            {data:'name' ,name:'name'},
            {data:'email' ,name:'email'},
            {data:'phone' ,name:'phone'},
            {data:'message' ,name:'message'},
            {data:'status' ,name:'status'},
            {data:'action', name:'action', orderable:true, searchable:true},

        ]
    });

 });

</script>

<script>

    $(document).ready(function(){
        
        // For view Message data for send ====>
        $(document).on('click','.view_message', function () {
         let id=$(this).data('id');
         let name=$(this).data('name');
         let email=$(this).data('email');
         let phone=$(this).data('phone');
         let message=$(this).data('message');
         console.log(name,email,phone,message);


         $('#up_id').val(id);
         $('#up_name').val(name);
         $('#up_email').val(email);
         $('#up_phone').val(phone);
         $('#up_message').val(message);

       });

    //  For update pickup=====>
    //for insert as update ====>
    $(document).on('click', '.send_contact_message', function(e){
        e.preventDefault();
        let up_id=$('#up_id').val();
        let send_message=$('#send_message').val();
        let up_email=$('#up_email').val();

        

        console.log(send_message,up_email);
        $.ajax({
          type: "post",
            url: "{{ route('send.contact.message') }}",
            data: {send_message:send_message,up_id:up_id,up_email:up_email},
            dataType: "json",
            success: function (response) {
                 if (response.status =='success') {
                    $('#viewModal').modal('hide');
                    $('#update_modal')[0].reset();
                    // $('.table').load(location.href+' .table');
                    $('.table').DataTable().ajax.reload();

                 }
            },error: function (err) {
               let error=err.responseJSON;
               $.each(error.errors,function(index,value){
                $('.errmsg').append('<span class="text-danger">'+value+'</span>'+'<br>');
               })
            }
        })


        
       })

       //For delete Pickup ====>
        //Delete data ====>
         $(document).on('click','.delete_pickup',function(e){
        e.preventDefault();
        let pickup_id=$(this).data('id');

        // alert(pickup_id);
        if (confirm("are you sure to delete This Pickup point ?")){
            $.ajax({
            type: 'DELETE',
            url: "{{ route('pickuppoint.delete') }}",
            data: {pickup_id: pickup_id},
            dataType: "json",
            success: function (response) {
                console.log(response);
                 if (response.status=='success') {
                    $('#add_Modal').modal('hide');
                    $('#exampleModal')[0].reset();
                    // $('.table').load(location.href+' .table');
                    $('.table').DataTable().ajax.reload();

                    
                 }
            }
        });
        }
       })




        
    });
</script>













    @endsection
