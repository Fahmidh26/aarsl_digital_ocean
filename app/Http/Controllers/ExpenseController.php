<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\ExpenseType;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class ExpenseController extends Controller
{
    public function EnpenseTypeView (){

    	$expenseTypes = ExpenseType::latest()->get();
    	return view('admin.Backend.Expense.expenseType',compact('expenseTypes'));
    }

    public function EnpenseTypeStore(Request $request){

    //    $request->validate([
    // 		'expense' => 'required',
			// 'category_image' => 'required',
    		// 'category_icon' => 'required',
    	// ],[
    	// 	'category_name.required' => 'Input Category Name',
			// 'category_image.required' => 'Input Category Image',
    	// ]);
		
		// $image = $request->file('category_image');
    	// $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();

    	// Image::make($image)->save('upload/category/'.$name_gen);
    	// $save_url = 'upload/category/'.$name_gen;
    	 

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

	public function CategoryEdit($id){
    	$category = Category::findOrFail($id);
    	return view('admin.Backend.Category.category_edit',compact('category'));

    }


    public function CategoryUpdate(Request $request ,$id){

		Category::findOrFail($id)->update([
			'category_name' => $request->category_name,
			]);

			$notification = array(
				'message' => 'Category Updated Successfully',
				'alert-type' => 'success'
			);
	
			return redirect()->route('category.view')->with($notification);
	}

    public function CategoryDelete($id){

    	Category::findOrFail($id)->delete();

    	$notification = array(
			'message' => 'Category Deleted Successfully',
			'alert-type' => 'success'
		);

		return redirect()->back()->with($notification);

    } // end method 
}
