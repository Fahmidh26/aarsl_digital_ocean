@extends('admin.aDashboard')
@section('admins')

  <!-- Content Wrapper. Contains page content -->

	  <div class="container-full">
		<!-- Content Header (Page header) -->
		 

		<!-- Main content -->
		<section class="content">
		  <div class="row">
			   
		 

			<div class="col-12">

			 <div class="box">
				<div class="box-header with-border">
				  <h3 class="box-title">Purchase List <span class="badge badge-pill badge-danger"> {{ count($purchases) }} </span></h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="table-responsive">
					  <table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>SL.</th>
								<th>Chalan No</th>
								<th>Supplier Name</th>
								<th>Purchase Date</th>
								<th>Total Amount</th>
								<th>Status</th>
								<th>Change Status</th>
								 
							</tr>
						</thead>
						<tbody>
			@php
				$sl = 0;
			@endphp
	 @foreach($purchases as $item)
	 <tr>
		<td width="5%">{{ $sl++ }}</td>
        <td>{{ $item->chalan_no }}</td>
		<td>{{ $item->supplier->supplier_name }}</td>
		<td>{{ $item->purchase_date }}</td>
		<td>TK {{ $item->grand_total }} </td>
		<td>{{ $item->status }}</td>
		<td width="20%">
 <a href="{{ route('purchase.details',$item->id) }}" class="btn btn-primary" title="Purchase View"><i class="fa fa-eye"></i> </a>

 <a href="{{ route('purchase.status.factory',$item->id) }}" class="btn btn-info" title="Change Status"><i class="fa fa-pencil"></i> </a>
{{-- 
 <a href="{{ url('quotation/invoice_download/'.$item->id ) }}" class="btn btn-danger" title="Download Quotation"><i class="fa fa-download"></i></a> --}}

		</td>
							 
	 </tr>
	  @endforeach
						</tbody>
						 
					  </table>
					</div>
				</div>
				<!-- /.box-body -->
			  </div>
			  <!-- /.box -->

			          
			</div>
			<!-- /.col -->

 
 


		  </div>
		  <!-- /.row -->
		</section>
		<!-- /.content -->
	  
	  </div>
  



@endsection