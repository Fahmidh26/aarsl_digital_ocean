@extends('admin.aDashboard')
@section('admins')

 {{-- TRIAL START --}}
 <div class="container-fluid">
	<div class="row mt-4">
	  <div class="col-lg-8 mb-lg-0 mb-4">
		<div class="card">
		  <div class="card-body p-3">
			<div class="row">
							<!-- /.box-header -->
							{{-- <div class="box-body"> --}}
								<div class="table-responsive">
								  <table id="example1" class="table table-bordered table-striped">
									<thead>
										<tr>
										
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Driver Name</th>

											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Phone Number</th>
										
											<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Action</th>
											 
										</tr>
									</thead>
									<tbody>
            
 @foreach($drivers as $item)
 <tr>
  <td>{{ $item->d_name }}</td>
  <td>{{ $item->phone }}</td>
  {{-- <td>
<a href="{{ route('brand.edit',$item->id) }}" class="btn btn-info" title="Edit Data"><i class="fa fa-pencil"></i> </a>
<a href="{{ route('driver.delete',$item->id) }}" class="btn btn-danger" title="Delete Data" id="delete">
 <i class="fa fa-trash"></i></a>
  </td> --}}
             
 </tr>
  @endforeach
</tbody>
									 
</table>
</div>
{{-- </div> --}}
</div>
</div>
</div>
</div>

{{-- ADD CUSTOMER --}}
<div class="col-lg-4 mb-lg-0 mb-4">
  <div class="card">
    <div class="card-body p-3">
      <div class="row">

<form method="post" action="{{ route('driver.store') }}">
@csrf
        
<div class="form-group">
<label  class="text-uppercase text-dark text-xs font-weight-bold ">Driver Name</label>
<div class="controls">
<input type="text"  name="d_name" class="form-control" > 
@error('d_name') 
<span class="text-danger">{{ $message }}</span>
@enderror 
</div>
</div>

<div class="form-group">
<label  class="text-uppercase text-dark text-xs font-weight-bold ">Phone Number</label>
<div class="controls">
<input type="text"  name="phone" class="form-control" > 
@error('phone') 
<span class="text-danger">{{ $message }}</span>
@enderror 
</div>
</div>


{{-- <div class="text-xs-right"> --}}
<input type="submit" class="btn btn-rounded btn-primary mb-5" value="Add Driver">					 
         {{-- </div> --}}

       </div>
</form>

</div>

</div>



{{-- TRIAL END --}}

    </div>
    @include('admin.body.footer')
  </div>
@endsection