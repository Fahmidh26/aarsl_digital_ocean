@extends('admin.aDashboard')
@section('admins')

<div class="container-fluid py-4">
  <div class="row">
			   
		 

    <div class="col-8">

     <div class="box">
      <div class="box-header with-border">
        <h3 class="box-title">Dealer List</h3>
      </div>
      <!-- /.box-header -->
      <div class="box-body">
        <div class="table-responsive">
          <table id="example1" class="table table-bordered table-striped">
          <thead>
            <tr>
              <th>Name</th>
              <th>Address</th>
              <th>Email</th>
              <th>Phone</th>
              <th>Action</th>
               
            </tr>
          </thead>
          <tbody>
            
 @foreach($customers as $item)
 <tr>
  <td>{{ $item->customer_name }}</td>
  <td>{{ $item->address }}</td>
  <td>{{ $item->email }}</td>
  <td>{{ $item->phone }}</td>
  <td>
<a href="{{ route('brand.edit',$item->id) }}" class="btn btn-info" title="Edit Data"><i class="fa fa-pencil"></i> </a>
<a href="{{ route('brand.delete',$item->id) }}" class="btn btn-danger" title="Delete Data" id="delete">
 <i class="fa fa-trash"></i></a>
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


<!--   ------------ Add Brand Page -------- -->


        <div class="col-4">

     <div class="box">
      <div class="box-header with-border">
        <h3 class="box-title">Add Dealer </h3>
      </div>
      <!-- /.box-header -->
      <div class="box-body">
        <div class="table-responsive">


<form method="post" action="{{ route('dealer.store') }}">
   @csrf
           
 <div class="form-group">
  <h6>Dealer Name <span class="text-danger">*</span></h6>
  <div class="controls">
 <input type="text"  name="customer_name" class="form-control" > 
 @error('customer_name') 
 <span class="text-danger">{{ $message }}</span>
 @enderror 
</div>
</div>

<div class="form-group">
  <h6>Email<span class="text-danger">*</span></h6>
  <div class="controls">
 <input type="text"  name="email" class="form-control" > 
 @error('email') 
 <span class="text-danger">{{ $message }}</span>
 @enderror 
</div>
</div>

<div class="form-group">
  <h6>Phone<span class="text-danger">*</span></h6>
  <div class="controls">
 <input type="text"  name="phone" class="form-control" > 
 @error('phone') 
 <span class="text-danger">{{ $message }}</span>
 @enderror 
</div>
</div>

<div class="form-group">
  <h6>Address<span class="text-danger">*</span></h6>
  <div class="controls">
 <input type="text" name="address" class="form-control" >
   @error('address') 
 <span class="text-danger">{{ $message }}</span>
 @enderror 
  </div>
</div>


<div class="text-xs-right">
	<input type="submit" class="btn btn-rounded btn-primary mb-5" value="Add Dealer">					 
						</div>
   
          </div>
</form>




          
        </div>
      </div>
      <!-- /.box-body -->
      </div>
      <!-- /.box --> 
    </div>

@endsection