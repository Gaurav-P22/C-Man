
<<<<<<< HEAD
<!--  -->
=======
<?php
session_start();

// Logout logic
if (isset($_GET['logout'])) {
    // Log out by destroying the session
    session_destroy();
    header("location: index.php?msg=logged out successfully");
    exit();
}?>
>>>>>>> origin/master
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>C-MAN</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <link rel="stylesheet" href="css/animate.css">
  <link rel="icon" type="image/x-icon" href="/images/favicon.ico">
  <link href="css/prettyPhoto.css" rel="stylesheet">
  
  <link href="css/style.css" rel="stylesheet" /><style>
  #co:hover{color:red;}
  input
  {
    font-weight: bold;
    color: black;

  }
  </style>
</head>

<body>
  <header>
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="navigation">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
            <div class="navbar-brand">
              <a href="index.php"><h1><span style="color:red"><i>C-</i>&nbsp;&nbsp;<i style="color: Black">MAN</i>&nbsp;&nbsp;</span><i style="color: red">System</i></h1></a>
            </div>
          </div>

          <div class="navbar-collapse collapse">
            <div class="menu">
              <ul class="nav nav-tabs" role="tablist">
                <li role="presentation"><a href="index.php" id='co' style="color: red;">Home</a></li>
                
                <li role="presentation"><a href="contactus.php" id='co' >Contact Us</a></li>
               
				<li role="presentation"><a href="reg.php" id='co' >SIGN UP </a></li>
               
              </ul>
            </div>
          </div>
        </div>
      </div>
    </nav>
  </header>

  <section id="main-slider" class="no-margin">
    <div class="carousel slide">
      <div class="carousel-inner">
<<<<<<< HEAD
        <div class="item active" style="background-image: url(images/extra/chefs-bg.jpg);background-attachment:fixed">
=======
        <div class="item active" style="background-image: url(images/extra/chefs-bg.jpg);background-attachment:fixed;background-size:cover;width:100vw;height:100vh;">
>>>>>>> origin/master
          <div class="container">
            <div class="row slide-margin">

              <div class="col-sm-6">
<<<<<<< HEAD
                <div class="carousel-content">
                  <p class="animation animated-item-3" style="color:grey"></p>
				  <div class="form-control" style="height:300px;width:350px;font-weight:bold;background-color:grey; box-shadow:6px 6px 7px 7px grey">
					<form action="validateLogin.php" method='POST'>
					<h3 style="color: black">Log in </h3>
=======
                <div class="carousel-content" style="margin-top:-2%;">
                  
				  <div class="form-control" style="height:300px;width:350px;font-weight:bold;background-color:grey; box-shadow:6px 6px 7px 7px grey;padding:20px">
					<form action="validateLogin.php" method='POST'>
					<Legend><h4 class="animation animated-item-3" style="color:#e5e5e5;font-weight:20px; font-weight:900;">LOGIN</h4></Legend>
>>>>>>> origin/master
					<select class='form-control' name="type">
       <option disabled="">Login Type</option>
         <option  value="admin">Manager</option>
       <option  value="employee">Employee</option>
       


          </select><br>
				  <input type="text" name='t1' class='form-control' placeholder="Email Id"/><br>
				  <input type="password" name='t2' class='form-control' placeholder="Password"/><br>
          
				  <input class='btn btn-info' name="login" type="submit">
</form>
              </div>

                  </div>
              </div>

              <div class="col-sm-6 hidden-xs animation animated-item-4">
                <div class="slider-img">
                  
				  </div>
              </div>

            </div>
          </div>
        </div>
        <!--/.item-->
      </div>
      <!--/.carousel-inner-->
    </div>
    <!--/.carousel-->
  </section>
  <!--/#main-slider-->

  
 
 
  
  <section id="conatcat-info">
    <div class="container">
      <div class="row">
        <div class="col-sm-8">
          <div class="media contact-info wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="pull-left">
              <i class="fa fa-phone"></i>
            </div>
            <div class="media-body">
              <h2>Have a question or need help?</h2>
              <p>+0123 456 70 80</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--/.container-->
  </section>
  <!--/#conatcat-info-->

  <footer>
    <div class="footer" style="background-color:gray">
      <div class="container">
        <div class="social-icon">
          <div class="col-md-4">
            <ul class="social-network">
              <li><a href="#" class="fb tool-tip" title="Facebook"><i class="fa fa-facebook"></i></a></li>
              <li><a href="#" class="twitter tool-tip" title="Twitter"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#" class="gplus tool-tip" title="Google Plus"><i class="fa fa-google-plus"></i></a></li>
              <li><a href="#" class="linkedin tool-tip" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
              <li><a href="#" class="ytube tool-tip" title="You Tube"><i class="fa fa-youtube-play"></i></a></li>
            </ul>
          </div>
        </div>

        <div class="col-md-4 col-md-offset-4">
          <div class="copyright" style="color:black;font-weight:bold;">
            &copy; All Rights Reserved.
            <div class="credits">
              <!--
                All the links in the footer should remain intact.
                You can delete the links only if you purchased the pro version.
                Licensing information: https://bootstrapmade.com/license/
                Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Company
              -->
              <a href="#" style="color:black;font-weight:bold;">Made </a> By <a href="#" style="color:black;font-weight:bold;">ANMOL && GAURAV</a>
            </div>
          </div>
        </div>
      </div>

      <div class="pull-right">
        <a href="#home" class="scrollup"><i class="fa fa-angle-up fa-3x"></i></a>
      </div>
    </div>
  </footer>



  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="js/jquery-2.1.1.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.prettyPhoto.js"></script>
  <script src="js/jquery.isotope.min.js"></script>
  <script src="js/wow.min.js"></script>
  <script src="js/functions.js"></script>
<<<<<<< HEAD
=======
  <script>
  document.addEventListener('DOMContentLoaded', function () {
    const loginForm = document.querySelector('form[action="validateLogin.php"]');

    loginForm.addEventListener('submit', function (event) {
      const emailInput = document.querySelector('input[name="t1"]');
      const passwordInput = document.querySelector('input[name="t2"]');

      if (!isValidEmail(emailInput.value) || passwordInput.value.trim() === '') {
        event.preventDefault(); // Prevent form submission
        alert('Please enter a valid email and password.');
      }
    });

    function isValidEmail(email) {
      // Simple email validation regex
      const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      return emailRegex.test(email);
    }
  });
</script>
>>>>>>> origin/master

</body>

</html>
