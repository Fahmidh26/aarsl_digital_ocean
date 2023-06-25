@extends('admin.aDashboard')
@section('admins')


 {{-- TRIAL START --}}
 <div class="container-fluid">
	<div class="row">
	  <div class="col-lg-12 mb-lg-0 mb-4">
		<div class="card">
		  <div class="card-body p-3">
			<div class="row">



			<div class="col-12">

			 <div class="box">
				{{-- <div class="box-header with-border">
				  <h3 class="box-title">Journey List<span class="badge badge-pill badge-danger"> {{ count($journeys) }} </span></h3>
				</div> --}}
				<!-- /.box-header -->
				<div class="box-body">
					<div class="table-responsive">
					  <table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Date</th>
								<th>From</th>
								<th>Destination</th>
								<th>Driver</th>
								<th>Truck No.</th>
								<th>Amount</th>
								<th>Action</th>


							</tr>
						</thead>
						<tbody>
	 @foreach($journeys as $item)
	 <tr>
		<td>{{ $item->date }}</td>
		 <td>{{ $item->from }}</td>
		 <td>{{ $item->destination }}</td>
		 <td>{{ $item->driver->d_name }}</td>
		 <td>{{ $item->truck->truck_no }}</td>
		 <td>{{ $item->amount }}</td>
		{{-- <td>
			<a class="btn btn-link text-dark px-3 mb-0" href="{{ route('purchase.details',$item->id) }}"><i class="fas fa-pencil-alt text-dark me-2" aria-hidden="true"></i>Edit</a>
			
			<a class="btn btn-link text-danger text-gradient px-3 mb-0" href="{{ route('journey.delete',$item->id) }}"><i class="fa-solid fa-trash me-2"></i>Delete</a>
		</td> --}}

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