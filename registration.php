<?php
if(isset($_REQUEST['sub']))
  {
    echo "Hi";
  $aaa=$_POST['t0'];
  $aa=$_POST['t1'];
  $a=$aaa." ".$aa;
  $b=$_POST['t2'];
  $c=$_POST['t3'];
  $d=$_POST['t4'];
  $e=$_POST['t5'];
  $f=$_POST['t6'];
  $g=$_POST['t7'];
  $h=$_POST['t8'];
  
  $con=mysqli_connect("localhost","root","","project");
  $sql="insert into employee values('$a','$b','$c','$d','$e','$f','$g','$h')";
    if(mysqli_query($con,$sql))
    {     
      header("location:registration.php?msg=Registration Successfully");      
    }   
else{header("location:registration.php?msg=Error!!!!!!!!!!!!!");      
    }   
  }   
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>C MAN</title>
  <!-- Bootstrap -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <link rel="stylesheet" href="css/animate.css">
  <link href="css/prettyPhoto.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet" />
  <link rel="icon" type="x-icon" href="images/extra/icon.png">
  <style>
  #co:hover{
    color:red;
  }
  input{
    font-weight: bold;
  }
  </style>
  
</head>

<body >
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
               <a href="index.php"><h1><span style="color:red"><i>C-</i>&nbsp;&nbsp;<i style="color: Black">MAN</i>&nbsp;&nbsp;</span><i style="color: red"></i></h1></a>
          </div>
          </div>

          <div class="navbar-collapse collapse">
            <div class="menu">
              <ul class="nav nav-tabs" role="tablist">
                <li role="presentation"><a href="index.php" id='co' >Home</a></li>
                <li role="presentation"><a href="about.php" id='co' >About Us</a></li>
               
                <li role="presentation"><a href="contactus.php" id='co' > Contact</a></li>
				<li role="presentation"><a href="registration.php" id='co' >Registration</a></li>
               
              </ul>
            </div>
          </div>
        </div>
      </div>
    </nav>
  </header>


  <section id="contact-page" style="background-image: url(images/extra/bgreg.jpg);background-size:cover;background-repeat:no-repeat;background-attachment:fixed"><br><br>
  <br><br> <br> <div class="container" style="width:900px;background-color:#BDDBD0;border-radius:50px; box-shadow:20px 15px 15px 20px lightgrey;border:1px solid grey;">
      <div class="center"><br>
        <h2 style="color:white">Employee's Registration </h2>
        <div class="alert alert-danger alert-dismissible  " role="alert" style="text-align: center;">
        	
        	<a href="#" class="close " data-dismiss="alert" aria-label="close">&times;</a>
        	<?php if(isset($_GET['msg']))

{

	echo "<h4>".$_GET['msg']."</h4>";
}
  ?>
      
        </div>
        </div>
      <div class="row contact-wrap">
        <div class="status alert alert-success" style="display: none"></div>
        <div class="col-md-7 col-md-offset-3">
          <div id="sendmessage"></div>
          <div id="errormessage"></div>
          <form action="" method="post" role="form" name="myform" role="form" onsubmit="return validateform()" class="contactForm"><br>
        
     <div class="form-group form-inline">
      
              <input type="text" name="t0" class="form-control" required pattern="[a-zA-Z]+" title="First Name only" required placeholder="Your first Name"   />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t1" class="form-control" required pattern="[a-zA-Z]+" title="Surname only" required placeholder="Your Last Name"   />
              <div class="validation"></div>
             </div>
            <div class="form-group">
              <input type="number" name="t2" class="form-control" required placeholder="Your mobile no."   />
              <div class="validation"></div>
            </div>
            <div class="form-group">
              <input type="email" class="form-control" name="t3" required placeholder="Your Email"  />
              <div class="validation"></div>
            </div>
       <div class="form-group">
              <textarea type="text" name="t4" class="form-control" style="font-weight: bold;" required placeholder="plz enter your full address"  /></textarea>
              <div class="validation"></div>
            </div>
            <div class="form-group">
              Date Of Birth :<input type="date" class="form-control" name="t5" required   />
              <div class="validation"></div>
            </div> <div class="form-group">
              <input type="number" class="form-control" name="t6" required placeholder="Your Pin Code"  />
              <div class="validation"></div>
            </div>
            <p class="form-inline"> <div class="form-group">
             Male :  <input type="radio"  name="t7" value='male' required   />
              <div class="validation"></div>
            </div><div class="form-group">
             Female :  <input type="radio"  name="t7" required value='female'  />
              <div class="validation"></div>
            </div></p>
       <div class="form-group">
              <input type="password" name="t8" pattern="{6,6}" minlength="6" maxlength="10" title="enter min 6 digits or max 10 digits" class="form-control" required placeholder="Your Password" />
              <div class="validation"></div>

            </div>
            <div class="text-center">
              <button type="submit" name="sub" class="btn btn-info btn-lg" required="required">Register </button>
            </div>
          </form>
        </div>
      </div></div></section>
      <script>  
function validateform(){  
var password=document.myform.t2.value;  
var pin=document.myform.t6.value;  
  
 if(password.length<10){  
  alert("mobile no must be 10 Digits.");  
  return false;  
  } else if(password.length>10){  
  alert("mobile no must be 10 Digits.");  
  return false;  
  }   else if(pin.length<6){  
  alert("pincode must be 6 Digits.");  
  return false;  
  } else if(pin.length>6){  
  alert("pincode must be 6 Digits.");  
  return false;  
  }   
}  
</script>
  <!--/#contact-page-->

  <footer>
    <div class="footer" style="background-color:gray;">
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
              <a href="#" style="color:black;font-weight:bold;">Made </a> By <a href="#" style="color:black;font-weight:bold;">Gaurav Prajapati</a>
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

</body>

</html>
