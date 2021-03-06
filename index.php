<?php   session_start();  ?>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>12AM &mdash; Timeline</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="FreeHTML5.co" />

  	<!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FreeHTML5.co
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	-->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,300,600,400italic,700' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
	<div id="fh5co-page">
		<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
		<aside id="fh5co-aside" role="complementary" class="border js-fullheight">

			<h1 id="fh5co-logo"><a href="index.php"><img src="Image/1.png" style="width: 150px" alt=""></a></h1>
			<nav id="fh5co-main-menu" role="navigation">
				<ul>
					<li><a href="index.php">Home</a></li>
					
					<li>
			    	<?php

    			if( (!( isset( $_SESSION['login_status']))) || ($_SESSION['login_status'] != "ready")) {
        		echo '<a href="register.php"><span class="register">Register</span></a>

        		';
    			}
    			else{
        		echo "<a>Xin chào ".$_SESSION["name"]."</a>";
    			}
				?>
				</li>
				<li>
				    <?php
				if( (!( isset( $_SESSION['login_status']))) || ($_SESSION['login_status'] != "ready")) {
        			echo '<a href="login.php">Login </a>
				';
   					 }
   				 else{
        			echo '<a href="logout.php">Logout</a>';
        			echo "<br>";
        			
   				 }

				?>  
				</li>
					
				</ul>
			</nav>

			<div class="fh5co-footer">
				
				<ul>
					<li><a href="#"><i class="icon-facebook"></i></a></li>
					<li><a href="#"><i class="icon-twitter"></i></a></li>
					<li><a href="#"><i class="icon-instagram"></i></a></li>
					<li><a href="#"><i class="icon-linkedin"></i></a></li>
				</ul>
			</div>

		</aside>

		<div id="fh5co-main">
			<div class="fh5co-gallery">
				<?php 
		require "databaseconfig.php";
        
        $sql = "SELECT * from photostory where Year ='2016'";
        $result = mysqli_query($conn, $sql);
        if(!$result){
        die( "Can't query data".mysqli_error($conn) );
        }
        if(mysqli_num_rows($result)>0){

       if($row = mysqli_fetch_assoc($result)) {	
        
        echo "<h2 class='fh5co-heading animate-box' data-animate-effect='fadeInLeft' style='margin-left: 20px'>".$row["Year"]."</h2>";
        
		}
         } else {
        echo "0 results";
        }
        
       
        
        mysqli_close($conn);
        
        // 3. Kết thúc bảng
        ?>
					<?php
        require "databaseconfig.php";
        
        $sql = "SELECT * from photostory where Year ='2016'";
        $result = mysqli_query($conn, $sql);
        if(!$result){
        die( "Can't query data".mysqli_error($conn) );
        }
        if(mysqli_num_rows($result)>0){

       while($row = mysqli_fetch_assoc($result)) {	
        
        echo "<a class='gallery-item' href='details.php?id=".$row["id"]."'>";
        echo "<img src='".$row["Image"]."' style ='width:500px;height:200px;'>
					<span class='overlay'>
						<h2>".$row["Title"]."</h2>
						
					</span>
				</a>
				

			";
		}
         } else {
        echo "0 results";
        }
        
       
        
        mysqli_close($conn);
        
        // 3. Kết thúc bảng
        ?>



</div>




<div class="fh5co-gallery">
	<?php 
		require "databaseconfig.php";
        
        $sql = "SELECT * from photostory where Year ='2017'";
        $result = mysqli_query($conn, $sql);
        if(!$result){
        die( "Can't query data".mysqli_error($conn) );
        }
        if(mysqli_num_rows($result)>0){

       if($row = mysqli_fetch_assoc($result)) {	
        
        echo "<h2 class='fh5co-heading animate-box' data-animate-effect='fadeInLeft' style='margin-left: 20px'>".$row["Year"]."</h2>";
        
		}
         } else {
        echo "0 results";
        }
        
       
        
        mysqli_close($conn);
        
        // 3. Kết thúc bảng
        ?>
					<?php
        require "databaseconfig.php";
        
        $sql = "SELECT * from photostory where Year ='2017'";
        $result = mysqli_query($conn, $sql);
        if(!$result){
        die( "Can't query data".mysqli_error($conn) );
        }
        if(mysqli_num_rows($result)>0){

       while($row = mysqli_fetch_assoc($result)) {	
        
        echo "<a class='gallery-item' href='details.php?id=".$row["id"]."'>";
        echo "<img src='".$row["Image"]."' style ='width:500px;height:200px' >
					<span class='overlay'>
						<h2>".$row["Title"]."</h2>
						
					</span>
				</a>
				

			";
		}
         } else {
        echo "0 results";
        }
        
       
        
        mysqli_close($conn);
        
        // 3. Kết thúc bảng
        ?>
        
        

</div>

<div class="fh5co-gallery">

	<?php 
		require "databaseconfig.php";
        
        $sql = "SELECT * from photostory where Year ='2018'";
        $result = mysqli_query($conn, $sql);
        if(!$result){
        die( "Can't query data".mysqli_error($conn) );
        }
        if(mysqli_num_rows($result)>0){

       if($row = mysqli_fetch_assoc($result)) {	
        
        echo "<h2 class='fh5co-heading animate-box' data-animate-effect='fadeInLeft' style='margin-left: 20px'>".$row["Year"]."</h2>";
        
		}
         } else {
        echo "0 results";
        }
        
       
        
        mysqli_close($conn);
        
        // 3. Kết thúc bảng
        ?>
        
	
	<!-- <h2 class='fh5co-heading animate-box' data-animate-effect='fadeInLeft' style='margin-left: 20px'>2018</h2> -->
					<?php
        require "databaseconfig.php";
        
        $sql = "SELECT * from photostory where Year ='2018'";
        $result = mysqli_query($conn, $sql);
        if(!$result){
        die( "Can't query data".mysqli_error($conn) );
        }
        if(mysqli_num_rows($result)>0){

       while($row = mysqli_fetch_assoc($result)) {	
        
        echo "<a class='gallery-item' href='details.php?id=".$row["id"]."'>";
        echo "<img src='".$row["Image"]."' style ='width:500px;height:200px' >
					<span class='overlay'>
						<h2>".$row["Title"]."</h2>
						
					</span>
				</a>
				

			";
		}
         } else {
        echo "0 results";
        }
        
       
        
        mysqli_close($conn);
        
        // 3. Kết thúc bảng
        ?>
        
        

</div>





					<!-- <h2 class="fh5co-heading animate-box" data-animate-effect="fadeInLeft" style="margin-left: 20px">2017</h2>
				<a class="gallery-item" href="single.html">
					<img src="images/work_1.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
					<span class="overlay">
						<h2>Nature</h2>
						<span>14 Photos</span>
					</span>
				</a>
				

			</div> -->
			
	

			<!-- <div class="fh5co-narrow-content">
				<h2 class="fh5co-heading animate-box" data-animate-effect="fadeInLeft">Services</h2>
				
			</div> -->


			


			
		</div>
	</div>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Stellar -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Counters -->
	<script src="js/jquery.countTo.js"></script>
	
	
	<!-- MAIN JS -->
	<script src="js/main.js"></script>

	</body>
</html>

