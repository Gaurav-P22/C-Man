<?php
if(isset($_POST['send']))
{	
	include 'db.php';
$name=$_POST['name'];
$contact=$_POST['contact'];
$email=$_POST['email'];
$message=$_POST['message'];
$new=mysqli_query($con,"INSERT INTO feedback(name,contact,email,message)
 VALUES('$name','$contact','$email','$message')");
if($new)
{
echo "<script> alert('Message Send Successfully');</script>";
}
else
{
echo"<script>alert('Failed');</script>";
}
}
?>  
<?php
	include('header.php');
?>
<div class="container">
	<p style="font-family: arial black; color:black; font-size: 20px" align="center"><u>Feedback</u></p><br/>
</div>
<div class="container-fluid">
<div class="col-lg-6">
	<img src="gallary\uni1.png" class="img img-thumbnail" style="height: 363px; width: 99%; 
	margin-left:2%;">
</div>
<div class="col-lg-6" >
	<form method="post" action="feedback.php">
		<table border="2px" style="width:98%" class="table" >
			<tr><td colspan="2">Name</td></tr>
			<tr><td colspan="2"><input type="text" class="form-control" id="tab" placeholder="Enter Name" name="name" required></td></tr>
			<tr><td>Contact</td><td>E-mail</td></tr>
			<tr><td><input type="number" class="form-control" id="tab" placeholder="Enter Contact" name="contact" required></td><td><input type="email" class="form-control" id="tab" placeholder="Enter E-mail" name="email" required></td></tr>
			<tr><td colspan="2">Your Query</td></tr>
			<tr><td colspan="2"><input type="text" class="form-control" id="tab" placeholder="Enter Your Query" name="message" required></td></tr>
			<tr><td colspan="2" align="center"><button class="btn btn-warning" name="send" value="send" type="submit" style="width: 100%"> Submit Query</button></td></tr>
		</table>
	</form>
</div>
</div>
<div style="margin-top: 5px">
	<?php
	include('footer.php');
?>
</div>

