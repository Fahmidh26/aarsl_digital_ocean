@extends('admin.aDashboard')
@section('admins')

  {{-- TRIAL START --}}
  <div class="container-fluid">
	<div class="row">
	  <div class="col-lg-12 mb-lg-0 mb-4">
		<div class="card">
		  <div class="card-body p-3">
			<div class="row">
				
			<form class="insert-form" id="insert_form" method="post" action="{{ route('chalan.store') }}">
			@csrf
			<div class="row">
				<div class="col">
					<div class="row mb-3">
						<div class="col-3"><label  class="text-uppercase text-dark text-xs font-weight-bold" for="mySelect">Customer</label></div>
						<div class="col">
							<select id="mySelect" name="customer_id" class="js-example-basic-single select2 form-control" required="">
							<option value="" selected="" disabled="">Select Customer</option>
							@foreach($customerIds as $customerId => $customerName)
							<option value="{{ $customerId }}">{{ $customerName }}</option>	
						@endforeach
							<!-- More options -->
							</select>
						</div>
						</div>
	
						
						<div class="row mb-1">
							<div class="col-3"><label class="text-uppercase text-dark text-xs font-weight-bold">Customer/Company</label></div>
							<div class="col"><input class="form-control mb-3" type="text" id="company" name="company" required=""></div>
							
						</div>

						<div class="row mb-3">
							<div class="col-3"><label class="text-uppercase text-dark text-xs font-weight-bold">Address</label></div>
							<div class="col"><input class="form-control " type="text" id="address" name="address" required="">
						</div>
					</div>

						
	
						{{-- <div class="row mb-3">
							<div class="col-2"><label>Address</label></div>
							<div class="col"><input class="form-control mb-3" type="text" id="address" name="address" readonly></div>
						</div> --}}
				</div>
				<div class="col">
					<div class="row mb-3">
						<div class="col-3"><label class="text-uppercase text-dark text-xs font-weight-bold">Chalan Date</label></div>
						<div class="col"><input class="form-control" type="date" id="chalanDate" name="chalanDate" required=""></div>
					</div>



					<div class="row mb-3">
						<div class="col-3"><label class="text-uppercase text-dark text-xs font-weight-bold">Truck Driver</label></div>
						<div class="col"><input class="form-control " type="text" id="t_driver" name="t_driver" required="">
					</div>
						
					</div>

					<div class="row mb-3">
						<div class="col-3"><label class="text-uppercase text-dark text-xs font-weight-bold">Truck No.</label></div>
						<div class="col"><input class="form-control " type="text" id="t_no" name="t_no" required="">
					</div>
						
					</div>
					{{-- <div class="row mb-3">
						<div class="col-2"><label>Details</label></div>
						<div class="col"><input class="form-control mb-3" type="text" id="details" name="details"></div>
					</div> --}}
					{{-- <div class="row mb-3">
						<div class="col-3"> <label for="details">Details</label></div>
						<div class="col"><textarea class="form-control" name="details" id="details" rows="3"></textarea></div>
					</div> --}}
					{{-- <div class="row mb-3">
						<div class="col"><input class="form-control mb-3" type="hidden" id="auth_id" name="auth_id"  value="{{ Auth::id()}}">
					</div>
			
				</div> --}}
			</div>

			<div class="container">
				<div class="row">
				  <div class="col">
				  </div>
				  <div class="col">
					<input type="submit" class="btn bg-gradient-primary w-100" value="Add Journey">
				  </div>
				  <div class="col">
				  </div>
				</div>
			  </div>
			
	  </form>
	</div>
</div>
</div>
</div>

</div>

@include('admin.body.footer')

@endsection