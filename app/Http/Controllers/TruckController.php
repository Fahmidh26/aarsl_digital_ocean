<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Driver;
use App\Models\Journey;
use App\Models\Truck;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class TruckController extends Controller
{
    public function TruckView(){
		$trucks = Truck::orderBy('truck_no','ASC')->get();
		return view('admin.Backend.Truck.truckno',compact('trucks'));
	}


     public function TruckStore(Request $request){

    	$request->validate([
    		 
    		'truck_no' => 'required',
    	]);

        Truck::insert([
		'truck_no' => $request->truck_no,
		'created_at' => Carbon::now(),   
      
    	]);

	    $notification = array(
			'message' => 'Truck Number Added Successfully',
			'alert-type' => 'success'
		);

		return redirect()->back()->with($notification);

    } // end method

	// DRIVER
	public function DriverView(){
		$drivers = Driver::orderBy('id','ASC')->get();
		return view('admin.Backend.Truck.driver',compact('drivers'));
	}

	public function DriverStore(Request $request){

    	$request->validate([
    		 
    		'd_name' => 'required',
    	]);

        Driver::insert([
		'd_name' => $request->d_name,
		'phone' => $request->phone,
		'created_at' => Carbon::now(),   
      
    	]);

	    $notification = array(
			'message' => 'Driver Added Successfully',
			'alert-type' => 'success'
		);

		return redirect()->back()->with($notification);

    } // end method

	// JOURNEY
	public function JourneyView(){
		$trucks = Truck::orderBy('truck_no','ASC')->get();
		$drivers = Driver::orderBy('d_name','ASC')->get();
		return view('admin.Backend.Truck.journey',compact('trucks','drivers'));
	}

	public function JourneyStore(Request $request){

        Journey::insert([
		'truck_id' => $request->truck_id,
		'driver_id' => $request->driver_id,
		'from' => $request->from,
		'destination' => $request->to,
		'date' => $request->jdate,
		'details' => $request->details,
		'amount' => $request->amount,
		'created_at' => Carbon::now(),   
      
    	]);

	    $notification = array(
			'message' => 'Journey Added Successfully',
			'alert-type' => 'success'
		);

		return redirect()->back()->with($notification);

    } // end method

	public function ManageJourney(){
		$journeys = Journey::orderBy('id','DESC')->get();
		return view('admin.Backend.Truck.journey_manage',compact('journeys'));
	}

	// -----------------------------------------------------------------------------------------------

	public function CustomerEdit($id){
		$customer = Customer::findOrFail($id);
			return view('admin.Backend.Brand.Slider.slider_edit',compact('customer'));
		}
	
	
	public function CustomerUpdate(Request $request){
			
			$slider_id = $request->id;
			$old_img = $request->old_image;
	
			if ($request->file('slider_img')) {
	
			unlink($old_img);
			$image = $request->file('slider_img');
			$name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
			Image::make($image)->resize(869,370)->save('upload/slider/'.$name_gen);
			$save_url = 'upload/slider/'.$name_gen;
	
            Customer::findOrFail($slider_id)->update([
			'title' => $request->title,
			// 'description' => $request->description,
			'slider_img' => $save_url,
	
			]);
	
			$notification = array(
				'message' => 'Slider Updated Successfully',
				'alert-type' => 'info'
			);
	
			return redirect()->route('slider.view')->with($notification);
	
			}else{
	
                Customer::findOrFail($slider_id)->update([
			'title' => $request->title,
			// 'description' => $request->description,
			
	
			]);
	
			$notification = array(
				'message' => 'Slider Updated Without Image Successfully',
				'alert-type' => 'info'
			);
	
			return redirect()->route('slider.view')->with($notification);
	
			} // end else 
		} // end method 
	
	
		public function CustomerDelete($id){
			$customer = Customer::findOrFail($id);
			$img = $customer->slider_img;
			unlink($img);
			Customer::findOrFail($id)->delete();
	
			$notification = array(
				'message' => 'Slider Delectd Successfully',
				'alert-type' => 'info'
			);
	
			return redirect()->back()->with($notification);
	
		} // end method

		public function DealerView(){
			$dealers = Dealer::latest()->get();
			return view('admin.Backend.Dealer.dealer' ,compact('dealers'));
		}
}
