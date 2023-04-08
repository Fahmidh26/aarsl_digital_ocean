<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Expense;
use App\Models\Purchase;
use App\Models\Requisition;
use Illuminate\Http\Request;
use Dompdf\Dompdf;

class ReportController extends Controller
{
    public function ReportsForm (){
        return view('admin.Backend.Report.reportForm');
    }

    public function ReportFilter(Request $request){

        $option = $request->option;
        $sdate = $request->sdate;
		$edate = $request->edate;
		
        if($option == "expense"){
            $filtered = Expense::whereBetween('date', [$sdate, $edate])->get();
        }elseif($option == "requisition"){
            $filtered = Requisition::whereBetween('date', [$sdate, $edate])->get();
        }elseif($option == "L/C"){
            $filtered = Purchase::whereBetween('purchase_date', [$sdate, $edate])->get();
        }
		
       $notification = array(
			'message' => 'Filterd Data Successfully',
			'alert-type' => 'success'
		);

	return view('admin.Backend.Report.filteredData' ,compact('filtered','option'));

    } 


	public function DownloadPDF(Request $request)
    {	
        $option = $request->input('soption');
        if($option == "expense"){
            $filter = collect(json_decode($request->input('filter'), true))->mapInto(Expense::class);
             if ($request->type === 'pdf') {
            $pdf = new Dompdf();
            $pdf->loadHTML(view('admin.Backend.Report.download_expense_report_pdf', ['filter' => $filter])->render());
            $pdf->setPaper('A4', 'landscape');
            $pdf->render();
            $pdf->stream('filtered-data.pdf');
            }
        }elseif($option == "requisition"){
            $filter = collect(json_decode($request->input('filter'), true))->mapInto(Requisition::class);
            if ($request->type === 'pdf') {
           $pdf = new Dompdf();
           $pdf->loadHTML(view('admin.Backend.Report.download_requisition_report_pdf', ['filter' => $filter])->render());
           $pdf->setPaper('A4', 'landscape');
           $pdf->render();
           $pdf->stream('filtered-data.pdf');
           }
        }

		
    }
}
