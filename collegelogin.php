<?php
include "talenthubconnect.php";
function data_uri ($file, $mime) {
    $contents = file_get_contents ($file);
    $base64 = base64_encode ($contents);
    return ('data:' . $mime . ';base64,' . $base64);
  }
  
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB college - login</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
 
</div>

                <div class="row1">
                
                        <img src="<?php echo data_uri ('c:\Users\arjun\OneDrive\Pictures\school\BUmjbn.jpg','image/png'); ?>" height="fit-content" alt="An imag"/>
                       
            
        </div>


    </div>
    <div class="row">
                                    <input type="text" class="form-control form-control-user" id="exampleInputEmail"
                                   placeholder="college_name" name="category_name">
                                    <input type="text" class="form-control form-control-user" id="exampleInputEmail"
                                   placeholder="password" name="category_name">
    </div>                
</div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>

</html>