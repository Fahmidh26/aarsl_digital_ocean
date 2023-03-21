<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\AcidProduct;
use App\Models\Customer;
use App\Models\Sales;
use App\Models\Bank;
use App\Models\TodaysProduction;
use Illuminate\Http\Request;
use App\Http\Controllers\DB;

class ChalanController extends Controller
{
    public function ChalanForm() 
    {
        // $customers = Sales::select('customer_id')->distinct()->pluck('customer_id');
        // dd($customers );
        $customerIds =Sales::join('customers', 'sales.customer_id', '=', 'customers.id')->select('sales.customer_id', 'customers.customer_name')
                ->distinct()->pluck('customers.customer_name', 'sales.customer_id');
        $inventory = TodaysProduction::sum('qty');
        $acidProducts = AcidProduct::orderBy('product_name','ASC')->first();
        // $products = Product::orderBy('product_name','ASC')->get();
        $banks = Bank::orderBy('bank_name','ASC')->get();
        return view('admin.Backend.Chalan.chalan_form', compact('customerIds','acidProducts','inventory','banks'));
    }

    public function SalesStore(Request $request)
    {
        // $request->validate([
    	// 	'supplier_id' => 'required',
    	// 	'chalan' => 'required',
        //     'quoDate' => 'required',
    	// ],[
    	// 	'customer_id.required' => 'Please Select a Customer',
        //     'quoDate.required' => 'Please Enter Quotation Date',
        //     'expDate.required' => 'Please Enter Quotation Expiry Date',
    	// ]);

        $sale_id = Sales::insertGetId([
            'customer_id' => $request->customer_id,
            'sale_date' => $request->saleDate,
            'details' => $request->details,
            'sub_total' => $request->subtotal,
            'grand_total' => $request->grandtotal,
            'discount_flat' => $request->dflat,
            'discount_per' => $request->dper,
            'total_vat' => $request->vper,
            'p_paid_amount' => $request->paidamount,
            'due_amount' => $request->dueamount,
            'created_at' => Carbon::now(),   
  
        ]);

        $item = $request->input('item');
        // $stock = $request->input('stock');
        // $batch = $request->input('batch');
        $qty = $request->input('qnty');
        $rate = $request->input('rate');
        $rateType = $request->input('rateType');
        $amount = $request->input('amount');

       
        foreach ($item as $key => $value) {

            SalesItem::create([
                'product_id' => $value,
                'sale_id' => $sale_id,
                'qty' => $qty[$key],
                'rate' => $rate[$key],
                'rateType' => $rateType[$key],
                'amount' => $amount[$key],
            ]);
        }

        $payitem = $request->input('payitem');
        $pay_amount = $request->input('pay_amount');
     
        foreach ($payitem as $key => $value) {

            SalesPaymentItem::create([
                'bank_id' => $value,
                'sale_id' => $sale_id,
                'b_paid_amount' => $pay_amount[$key],
            ]);
        }
    
		// return redirect()->back();
        $notification = array(
			'message' => 'Sale Saved Successfully',
			'alert-type' => 'success'
		);

        return redirect()->back()->with($notification);

    }

    public function ManageSales (){
       
        $sales = Sales::orderBy('id','DESC')->get();
		return view('admin.Backend.Sales.manage_sales',compact('sales'));

    }
}
