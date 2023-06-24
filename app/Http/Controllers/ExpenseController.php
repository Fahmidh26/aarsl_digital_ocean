<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Expense;
use App\Models\ExpenseType;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;

class ExpenseController extends Controller
{
    public function EnpenseTypeView (){

    	$expenseTypes = ExpenseType::latest()->get();
    	return view('admin.Backend.Expense.expenseType',compact('expenseTypes'));
    }

    public function EnpenseTypeStore(Request $request){


	ExpenseType::insert([
		'expenseType' => $request->expenseType,
		// 'category_image' => $save_url,
		// 'feature' => $request->featured,
	
		// 'category_icon' => $request->category_icon,
		'created_at' => Carbon::now(),   

    	]);

	    $notification = array(
			'message' => 'Expense Type Inserted Successfully',
			'alert-type' => 'success'
		);

		return redirect()->back()->with($notification);

    } // end method 

	public function ExpenseView (){

    	$expenseTypes = ExpenseType::latest()->get();
    	return view('admin.Backend.Expense.expense',compact('expenseTypes'));
    }

    public function ExpenseStore(Request $request){

        Expense::insert([
            'expenseType_id' => $request->expenseType,
            'date' => $request->date,
            'amount' => $request->amount,
			'location' => $request->location,
            'details' => $request->details,
            'created_at' => Carbon::now(),   
    
            ]);
            
           
            $notification = array(
                'message' => 'Expense Added Successfully',
                'alert-type' => 'success'
            );
    
    
            return redirect()->back()->with($notification);
    
        } // end method 

        public function ExpenseManage (){

			if(Auth::guard('admin')->user()->type=="1" || Auth::guard('admin')->user()->type=="2"){
            	$expenses = Expense::latest()->get();
			}else{
				$expenses = Expense::where('location','factory')->get();
			}
            return view('admin.Backend.Expense.manage_expense',compact('expenses'));
        }

		public function ExpenseDetails($id){
			$expense = Expense::findOrFail($id);
			return view('admin.Backend.Expense.expenseDetails',compact('expense'));
	
		}

		public function ExpenseUpdate(Request $request){

			$expense_id = $request->id;

			 Expense::findOrFail($expense_id)->update([
				'expenseType_id' => $request->expenseType,
				'date' => $request->date,
				'amount' => $request->amount,
				'location' => $request->location,
				'details' => $request->details,
				'updated_at' => Carbon::now(), 
		  ]);
	
			  $notification = array(
				'message' => 'Expense Updated Successfully',
				'alert-type' => 'success'
			);
	
			return redirect()->route('expense.managee')->with($notification);
	
	
		} // end method 

		public function ExpenseDelete($id){
			$expense = Expense::findOrFail($id);

			Expense::findOrFail($id)->delete();
	
			$notification = array(
				'message' => 'Expense Deleted Successfully',
				'alert-type' => 'info'
			);
	
			return redirect()->route('expense.managee')->with($notification);

	
		} // end method
	
}
