<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>12A - Register</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

    </head>

    <body>
        <!-- Top content -->
        <div class="top-content">
          
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong >12AM</strong>|Register</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                          <div class="form-top">
                            <div class="form-top-left">
                              <h3>Login to Upload images file</h3>
                                <p>Enter your username and password to log on:</p>
                            </div>
                            <div class="form-top-right">
                              <a class="btn btn-link-2" href="index.php">
                                        <i class="fa fa-home"></i> Home
                                    </a>
                            </div>
                            </div>
                            <div class="form-bottom">
                          <form role="form" action="register.php" method="post" class="login-form">
                            <div class="form-group">
                              <label class="sr-only" for="form-username">Full Name</label>
                                <input type="text" name="fname" placeholder="Full Name" class="form-username form-control" id="form-username">
                              </div>
                              <div class="form-group">
                              <label class="sr-only" for="form-username">Last Name</label>
                                <input type="text" name="lname" placeholder="Last Name" class="form-username form-control" id="form-username">
                              </div>
                            <div class="form-group">
                              <label class="sr-only" for="form-username">Username</label>
                                <input type="text" name="username" placeholder="Username..." class="form-username form-control" id="form-username">
                              </div>
                              <div class="form-group">
                                <label class="sr-only" for="form-password">Password</label>
                                <input type="password" name="pass" placeholder="Password..." class="form-password form-control" id="form-password">
                              </div>
                              <button type="submit" class="btn" name="register">Sign up!</button>
                              <center><p>Bạn đã có tài khoản?<a href="login.php"> Đăng Nhập</a></p> </center>
                                    
                          </form>
                        </div>
                        </div>
                    </div>
                  
                </div>
            </div>
            
        </div>


        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

        <!-- xử lý đăng ký -->
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if( isset( $_POST["register"]) ) {
    $_username = $_POST['username'];
    $_pass = $_POST['pass'];
    $_fname = $_POST['fname'];
    $_lname = $_POST['lname'];
  echo '<script language="javascript">';
      echo 'alert("Đăng ký thành công! Mời bạn Đăng Nhập")';
      echo '</script>';
    }
}
?>

<?php

require 'databaseconfig.php';
if (isset($_POST["username"]) && isset($_POST["pass"])) {
  $username = $_username;
  $pass = $_pass;
  $fname = $_fname;
  $lname = $_lname;
  $sql = "INSERT INTO dangnhap(fname,lname,username,pass) VALUES('".$fname."','".$lname."','".$username."','".$pass."')";
  $result = mysqli_query($conn,$sql);
  }
?>
    </body>

</html>