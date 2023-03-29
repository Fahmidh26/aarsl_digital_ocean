<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">
    <title>Download Chalan</title>
    <!-- Fonts CSS -->
    <link href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    
    <link rel="stylesheet" href="{{ asset('../assets/css/app-light.css') }}" id="lightTheme">

    <style>
      /* Regular styles here */
      
      /* Styles for print output */
      @media print {
          /* Define styles here */
          .print-button {
              display: none;
          }
      }
  </style>
  </head>
  <body class="vertical light">
    <div class="wrapper">

      <main role="main" class="main-content">
        <div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-12 col-lg-10 col-xl-8">
              <div class="row align-items-center mb-4">
                <div class="col">
                </div>
                <div class="col-auto">
                  <button class="print-button" onclick="window.print()" class="btn btn-secondary">Print</button>
                </div>
              </div>
              <div class="card shadow">
                <div class="card-body p-5">
                  <div class="row mb-5">
                    <div class="col-12 text-center mb-4">
                      {{-- <img src="./assets/images/logo.svg" class="navbar-brand-img brand-sm mx-auto mb-4" alt="..."> --}}
                      <h2 class="mb-0 text-uppercase">Chalan</h2>
                      <h5 class="mb-0">AA Rashayon Shilpo Ltd.</h5>
                      <p class="text-muted">West Wind Point, Cha-89/4-5, Progoti Sarani<br /> North Badda, Bir Uttam Rafikul Islam Avenue, Commercial Level 2, Dhaka, Bangladesh</p>
                    </div>
                    <div class="col-md-7">
                      <p class="small  text-uppercase mb-2">Chalan To</p>
                      <p class="mb-4">
                        <strong>{{$chalan->customer->customer_name}}</strong><br />{{$chalan->company}}<br />{{$chalan->address}}<br />
                      </p>
                      <p>
                        <span class="small text-muted text-uppercase">Chalan #</span><br />
                        <strong>{{$chalan->chalan_no}}</strong>
                      </p>
                    </div>
                    <div class="col-md-5">
                      <p class="small text-muted text-uppercase mb-2">Chalan Date</p>
                      <p class="mb-4">
                        <strong>{{$chalan->chalan_date}}</strong>
                      </p>
                      <p>
                        <span class="small text-muted text-uppercase">Driver Name #</span>
                        <strong>{{$chalan->t_driver}}</strong>
                      </p>
                      <p>
                        <span class="small text-muted text-uppercase">Truck No #</span>
                        <strong>{{$chalan->t_no}}</strong>
                      </p>
                    </div>
                  </div> <!-- /.row -->
                  <table class="table table-borderless table-striped">
                    <thead>
                      <tr>
                        <th scope="col" class="text-center">#</th>
                        <th scope="col" class="text-center">Description Of Goods</th>
                        <th scope="col" class="text-center">QTY/MT</th>
                        {{-- <th scope="col" class="text-right">Hours</th>
                        <th scope="col" class="text-right">Ammout</th> --}}
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row" class="text-center">1</th>
                        <td class="text-center"> Sulphuric Acid
                        </td>
                        <td class="text-center">{{$chalan->qty}}</td>
                        {{-- <td class="text-right">2</td>
                        <td class="text-right">$30.00</td> --}}
                      </tr>
                    </tbody>
                  </table>
                  <div class="row mt-5">
                    <div class="col-2 text-center">
                      <span class="text-muted small">---------------------</span>
                      <p class="text-muted small">
                        <p> Signature of the <br />Receiver</p>
                    </div>
                    <div class="col-md-5">
                 
                    </div>
                    <div class="col-md-5">
                      <div class="text-center mr-2">
                        <span class="text-muted small">---------------------</span>
                        <p class="text-muted small">
                         <p> Authorized<br />Signature</p>
                      </div>
                    </div>
                  </div> <!-- /.row -->
                </div> <!-- /.card-body -->
              </div> <!-- /.card -->
            </div> <!-- /.col-12 -->
          </div> <!-- .row -->
        </div> <!-- .container-fluid -->


      </main> <!-- main -->
    </div> <!-- .wrapper -->
  
  </body>
</html>