<?php   session_start();  ?>
<?php
// insert code PHP here
  

    if( (isset( $_SESSION['login_status'])) && ($_SESSION['login_status'] == "ready")) {
        header("Location: index.php");
    }

$sErr= "";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if( isset( $_POST["login"]) ) {
    $_user = $_POST['nA'];
    $_pass = $_POST['nB'];
    // kiểm tra user
require 'databaseconfig.php';
$sql = "SELECT ID,username,pass,fname,lname from dangnhap";
$result = mysqli_query($conn, $sql);
if(!$result){
  die( "Can't query data".mysqli_error($conn) );
}

if (mysqli_num_rows($result) > 0) {

    while($row = mysqli_fetch_assoc($result)) {
      $id= $row["ID"];
      $user = $row["username"];
      $pass = $row["pass"];
      $fname = $row["fname"];
      $lname = $row["lname"];
      if( $_user == $user && $_pass == $pass ){
        $_SESSION["ID"]= $id;
        $_SESSION["login_status"]= "ready";
        $_SESSION["name"]= $lname;
        header("Location: index.php");
    }else{
        $sErr= "Username hoặc Password bị sai hoặc chưa tồn tại.";
    }
    
      }
} 

mysqli_close($conn);
//end kiem tra
    
    if( $_user == "root" && $_pass == "020798" ){
        header("Location: index.php");
    }
    
   
  }
} // end if isset
?>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>12AM - Login</title>

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
      <?php
    if( $sErr != ""){
      echo '<script language="javascript">';
      echo 'alert("'.$sErr.'")';
      echo '</script>';
    }   
?>  
        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong >12AM</strong>|Login</h1>
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
			                    <form role="form" action="login.php" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="text" name="nA" placeholder="Username..." class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="nB" placeholder="Password..." class="form-password form-control" id="form-password">
			                        </div>
			                        <button type="submit" class="btn" name="login">Sign in!</button>
                                    <p>Bạn chưa có tài khoản?<a href="register.php"> Đăng Ký</a></p>
			                    </form>
		                    </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                        	<h3>...or login with:</h3>
                        	<div class="social-login-buttons">
	                        	<a class="btn btn-link-2" href="https://www.facebook.com/">
	                        		<i class="fa fa-facebook"></i> Facebook
	                        	</a>
	                        	<a class="btn btn-link-2" href="https://twitter.com/login?lang=en">
	                        		<i class="fa fa-twitter"></i> Twitter
	                        	</a>
	                        	<a class="btn btn-link-2" href="https://accounts.google.com/signin/v2/identifier?passive=1209600&osid=1&continue=https%3A%2F%2Fplus.google.com%2Fdiscover&followup=https%3A%2F%2Fplus.google.com%2Fdiscover&flowName=GlifWebSignIn&flowEntry=ServiceLogin">
	                        		<i class="fa fa-google-plus"></i> Google Plus
	                        	</a>
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
  <script type="text/javascript">
  $('.message a').click(function(){
   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
});

    </body>

</html>