@extends('admin.aDashboard')
@section('admins')

	  {{-- TRIAL START --}}
	  <div class="container-fluid">
		<div class="row">
			<div class="col-md-6">
				<div class="card">
					<div class="card-body p-3">
						<div class="form-filter">
							<form method="post" action="{{ route('report.filter') }}">
								@csrf
								<div class="card-body p-2">
									<div class="row">
										<div class="col-md-4 mb-md-0 mb-4">
											<div class="">
												<input class="form-control date mb-3" value="" type="date" id="sdate" name="sdate" required="">
											</div>
										</div>
										<div class="col-md-4">
											<div class="">
												<input class="form-control date mb-3" value="" type="date" id="edate" name="edate" required="">
												<input class="form-control date mb-3" value="{{$option}}" type="hidden" id="" name="option">
											</div>
										</div>
										<div class="col-md-4 mb-md-0 mb-4">
											<div>
												<select name="option" class="form-control" id="option">
													<option value="" selected="" disabled>Select Report Type</option>
													<option value="expense">Expense</option>
													<option value="requisition">Requisition</option>
												</select>
											</div>
										</div>
										<div class="col-md-12">
											<div class="">
												<input class="btn bg-gradient-dark mb-0" type="submit" name="save" id="save" value="Filter Schedule">
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-1">
				<div class="card">
					<div class="card-body p-3">
						<div class="form-download">
							<form action="{{ route('download.pdf.filter') }}" method="GET">
								@csrf
								<input type="hidden" name="type" value="pdf">
								<input type="hidden" name="filter" value="{{ $filtered->toJson() }}">
								<input type="hidden" name="soption" value="{{$option}}">
								<div class="">
									<input class="btn bg-gradient-dark mb-0" type="submit" name="save" id="save" value="PDF">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	
	

		
	<div class="row mt-4">
		<div class="col-lg-12 mb-lg-0 mb-4">
		  <div class="card">
			<div class="card-body">
			  <div class="row">
							  <!-- /.box-header -->
							  {{-- <div class="box-body"> --}}
								  <div class="table-responsive">
									<table id="example1" class="table table-bordered table-striped">
									  <thead>
										@if ($option == "expense")
										<tr>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Date</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Description</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Amount</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Details</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Location</th>
											
																					 
										</tr>
										@else
										{{-- @if ($option == "requisition") --}}
										<tr>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Date</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Description</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Amount</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Location</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Details</th>
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Procurement</th>
											<th class="text-uppercase text-secondary text-xxs 
											font-weight-bolder opacity-7">Type</th>
											
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Status</th>
																					 
										</tr>
										@endif
										 
									  </thead>
									  <tbody>
					@php
					$amount = 0;	
					@endphp
					
				   @foreach($filtered as $item)
				   @if ($option == "expense")
				   <tr>
					  <td><h6 class="mb-0 text-sm">{{ $item->date }}</h6></td>
					  <td><h6 class="mb-0 text-sm">{{ $item->expenseType->expenseType }}</h6></td>
					  <td><h6 class="mb-0 text-sm">{{ $item->amount }}</h6></td>
					  <td style="display:none;">{{$amount += $item->amount}}</td>
					  <td><h6 class="mb-0 text-sm">{{ $item->details }}</h6></td>
					  <td><h6 class="mb-0 text-sm">{{ $item->location }}</h6></td>			   
				   </tr>

				   @else
				 
				   <tr>
					<td><h6 class="mb-0 text-sm">{{ $item->date }}</h6></td>
					<td><h6 class="mb-0 text-sm">{{ $item->requisitionType->requisitionType }}</h6></td>
					<td><h6 class="mb-0 text-sm">{{ $item->amount }}</h6></td>
					<td style="display:none;">{{$amount += $item->amount}}</td>
					<td><h6 class="mb-0 text-sm">{{ $item->location }}</h6></td>
					<td><h6 class="mb-0 text-sm">{{ $item->details }}</h6></td>
					<td><h6 class="mb-0 text-sm">{{ $item->lo }}</h6></td>
					<td><h6 class="mb-0 text-sm">{{ $item->type }}</h6></td> 
					<td><h6 class="mb-0 text-sm">{{ $item->status }}</h6></td> 				   
				 </tr>
				 
				   @endif
					@endforeach
					@if ($option == "expense")
					<tr>
						<td></td>
						<td></td>
						<td>{{$amount}}</td>
						<td></td>
						<td></td>			   
					 </tr>
					 @else
					 <tr>
						<td></td>
						<td></td>
						<td>{{$amount}}</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td> 				   
					 </tr>
					 @endif
									  </tbody>
									   
									</table>
								  </div>
							  {{-- </div> --}}
			  </div>
			</div>
		  </div>
		</div>
  
	  </div>
	</div>
	  @include('admin.body.footer')

	  {{-- TRIAL END --}}
@endsection
