<?php
if($_SERVER['REQUEST_METHOD']=='POST')
  {
    $a=$_POST['t1'];
  $b=$_POST['t2'];
  $c=$_POST['t3'];
  $d=$_POST['t4'];
   $e=$_POST['t5'];
    $f=$_POST['t6'];
 
  $con1=mysqli_connect("localhost","root","","leave_manager");
$sql="update admin set name='$a',mobile='$b',address='$d',password='$f' where email='$c'";
    if(mysqli_query($con1,$sql))
    {     
      
      header("location:admin.php?msg=update successfully");      
    }   

    else
      {header("location:admin.php?msg=errorrrrrrrrrrr1111111111 ");      
    }   
  }   
 


?>