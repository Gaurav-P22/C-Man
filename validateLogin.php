<?php
if($_SERVER['REQUEST_METHOD']=="POST")
	
		{	
	echo"Hello";
	$u = $_POST['t1'];
	$p = $_POST['t2'];
	$c = $_POST['type'];
			
	include("config.php");
	 if($c =="employee")
	{
		
		
		$q = "select * from employee2 WHERE email='$u'";
		$result=mysqli_query($con,$q);
	if($row=mysqli_fetch_assoc($result))
	{
		$mail=$row['email'];
		$pass=$row['password'];
		if(($u==$mail)&&($p==$pass))
		{
		session_start();
				if($_SESSION['eem']=$mail)
				{
					echo "<script>alert(session created);</script>";
				}
			
					header("Location:employee.php?msg=welcome Employee");
				}
				else
				{
					echo "<script>alert('Error: You are not allowed by admin yet');window.location='index.php';</script></font>";
				}
			}
		
		else
		{
		 echo "<script>alert('Error: Faculty Username OR Password not matched');window.location='index.php';</script></font>";
		}
	
	
	}else if($c =="admin")
	{
		
		$q = "select * from admin WHERE email='$u'";
		
		$result=mysqli_query($con,$q);
		
		
	if($row=mysqli_fetch_assoc($result))
	{
		
		$mail=$row['email'];
		$pass=$row['password'];
		if(($u==$mail)&&($p==$pass))
		{
		session_start();
				if($_SESSION['em']=$mail)
				{
					echo "<script>alert(session created);</script>";
				}
			
					header("Location:admin.php?msg=welcome Admin");
				}
				else
				{
					echo "<script>alert('Error: You are not allowed by admin yet');window.location='index.php';</script></font>";
				}
			}
		
		else
		{
			 echo "<script>alert('Error: Faculty Username OR Password not matched');window.location='index.php';</script></font>";
		}
}

}

?>