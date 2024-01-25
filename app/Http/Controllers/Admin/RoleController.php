<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

// for pass check hash for make===>
use Hash;

use DB;

class RoleController extends Controller
{
    //
    public function __construct()
    {
    $this->middleware('auth');
    }

    // For Role index page ======>
    public function index(){
        $data = DB::table('users')->where('is_admin', 1)->where('role_admin', 1)->get();
        // dd($data);
        return view('admin.role.index',compact('data'));
    }

    // For Create Role =========>
    public function create(){
        return view('admin.role.create');
    }

    // For Store Role ============>
    public function store(Request $request){
        $validated = $request->validate([
            'email' => 'required|unique:users',
        ]);

        $data = array();
        $data['name'] = $request->name;
        $data['email'] = $request->email;
        $data['password'] = Hash::make($request->password);
        $data['category'] = $request->category;
        $data['product'] = $request->product;
        $data['offer'] = $request->offer;
        $data['order'] = $request->order;
        $data['blog'] = $request->blog;
        $data['pickup'] = $request->pickup;
        $data['ticket'] = $request->ticket;
        $data['contact'] = $request->contact;
        $data['report'] = $request->report;
        $data['setting'] = $request->setting;
        $data['userrole'] = $request->userrole;
        $data['is_admin'] = 1;
        $data['role_admin'] = 1;

        DB::table('users')->insert($data);

       return redirect()->back()->with('success' , 'Role Created!');

    }

    // For delete role =====>
    public function destroy($id){
        DB::table('users')->where('id', $id)->delete();
        return redirect()->back()->with('success' , 'Success to Delete Role!');

    }

    // Role Edit====>
    public function RoleEdit($id){
        $data = DB::table('users')->where('id', $id)->first();
        return view('admin.role.edit', compact('data'));

    }

    // For Update role =======>
    public function updateRole(Request $request){

        $data = array();
        $data['name'] = $request->name;
        $data['email'] = $request->email;
        $data['category'] = $request->category;
        $data['product'] = $request->product;
        $data['offer'] = $request->offer;
        $data['order'] = $request->order;
        $data['blog'] = $request->blog;
        $data['pickup'] = $request->pickup;
        $data['ticket'] = $request->ticket;
        $data['contact'] = $request->contact;
        $data['report'] = $request->report;
        $data['setting'] = $request->setting;
        $data['userrole'] = $request->userrole;

        DB::table('users')->where('id', $request->id)->update($data);

       return redirect()->route('manage.role')->with('success' , 'Role Updated!');
    }
}
