<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use DB;

//For yajra datatables===>
use DataTables;


// For send mail ===>
use App\Mail\ContactMail;
use Mail;

class ContactController extends Controller
{
    //
    public function __construct()
    {
    $this->middleware('auth');
    }

    
    // For Contact us show page =======>
    public function index(Request $request){
        
        if ($request->ajax()) {
         $data = DB::table('contacts')->get();
        // yajra data tables pass ====> 
        return DataTables::of($data)
        ->addIndexColumn()
        ->addColumn('action', function($row){

            $actionbtn= '<a href="#" class="btn btn-info btn-sm view_message" data-toggle="modal" data-target="#viewModal"   data-id="'.$row->id.'" data-name="'.$row->name.'"  data-email="'.$row->email.'"   data-phone="'.$row->phone.'" data-message="'.$row->message.'" data-status="'.$row->status.'"><i class="fas fa-eye"></i></a>

            <a href="" data-id="'.$row->id.'" class="btn btn-danger btn-sm delete_pickup" ><i class="fas fa-trash"></i></a>';
                    
            return $actionbtn;
        })
        ->rawColumns(['action'])
        ->make(true);
    
        }
        return view('admin.contact.index');
    
    }

    // Send contact message =====> as admin 
    public function Sendcontactmessage(Request $request){

        $data = array();
        $data['send_message'] = $request->send_message;


        DB::table('admin_replies')->insert($data); // ei line e insert hocce insert na krte chaile eta bad dilaw mail jabe


        Mail::to($request->up_email)->send(new ContactMail($data));


    return response()->json([
     'status' => 'success',
    ]);
    }


}
