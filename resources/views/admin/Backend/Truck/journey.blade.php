@extends('admin.aDashboard')
@section('admins')

  {{-- TRIAL START --}}
  <div class="container-fluid">
	<div class="row">
	  <div class="col-lg-12 mb-lg-0 mb-4">
		<div class="card">
		  <div class="card-body p-3">
			<div class="row">
				
			<form class="insert-form" id="insert_form" method="post" action="{{ route('journey.store') }}">
			@csrf
			<div class="row">
				<div class="col">
					<div class="row mb-3">
						<div class="col-3"><label  class="text-uppercase text-dark text-xs font-weight-bold" for="mySelect">Truck No.</label></div>
						<div class="col">
							<select id="mySelect" name="truck_id" class="js-example-basic-single select2 form-control" required="">
							<option value="" selected="" disabled="">Select Truck</option>
							@foreach($trucks as $truck)
							<option value="{{ $truck->id }}">{{ $truck->truck_no }}</option>	
						@endforeach
							<!-- More options -->
							</select>
						</div>
						</div>
	
						
						<div class="row mb-3">
							<div class="col-3"><label  class="text-uppercase text-dark text-xs font-weight-bold" for="mySelect">Driver</label></div>
							<div class="col">
								<select id="mySelect" name="driver_id" class="js-example-basic-single select2 form-control" required="">
								<option value="" selected="" disabled="">Select Driver</option>
								@foreach($drivers as $driver)
								<option value="{{ $driver->id }}">{{ $driver->d_name }}</option>	
							@endforeach
								<!-- More options -->
								</select>
							</div>
							</div>

						<div class="row mb-3">
							<div class="col-3"><label class="text-uppercase text-dark text-xs font-weight-bold">Details</label></div>
							<div class="col"><input class="form-control " type="text" id="details" name="details">
						</div>
					</div>
						<div class="row mb-3">
							<div class="col-3"><label class="text-uppercase text-dark text-xs font-weight-bold">Amount</label></div>
							<div class="col"><input class="form-control " type="number" id="amount" name="amount">
						</div>
					</div>

				</div>
				<div class="col">
					<div class="row mb-3">
						<div class="col-3"><label class="text-uppercase text-dark text-xs font-weight-bold">Journey Date</label></div>
						<div class="col"><input class="form-control" type="date" id="jdate" name="jdate" required=""></div>
					</div>

					<div class="row mb-3">
						<div class="col-3"><label class="text-uppercase text-dark text-xs font-weight-bold">From</label></div>
						<div class="col"><input class="form-control " type="text" id="from" name="from" required="">
					</div>
						
					</div>

					<div class="row mb-3">
						<div class="col-3"><label class="text-uppercase text-dark text-xs font-weight-bold">Destination</label></div>
						<div class="col"><input class="form-control " type="text" id="to" name="to" required="">
					</div>
						
					</div>
					
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