<?php
require 'forgotpasscon.php';
if(isset ($_POST['login'])){
	$username=$_POST['user'];
	$password=$_POST['pass'];
	$query="SELECT `username`,`password` FROM `forgotpass` WHERE username='".$username."' and password='".$password."'";
	$result_query=mysqli_query($conn, $query);
	if($result_query){
		if(mysqli_num_rows($result_query)){
			echo("You are logined successfully");
		}else{
			echo("There is no such rows in database");
		}
		}else{
			echo("No result");
		}
	}


?>

<!DOCTYPE html>
<html>

	<head>
		<title>Welcome  To Facebook - Sign up, Log in, Chat </title>
		<link rel="stylesheet" type="text/css" href="css/signin.css">
	</head>

<body>

	<div id="container">
		<div class="sign-in-form">
			<table>
			<h1>Welcome to Facebook</h1>
			<h2>Log in</h2>
	<form method="post" action="signin_form.php" enctype="multipart/form-data">
	<a title='signup' href='signup.php'>
				<b>Don't have an account</b></a>
				<tr>
					<td><label>Email</label></td>
					<td><input type="email" name="email" placeholder="example@gmail.com" class="form-1" title="Enter your email" required /></td>
				</tr>
				<tr>
					<td><label>Password</label></td>
					<td><input type="password" name="password" placeholder="******" class="form-1" title="Enter your password" required /></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td colspan="2">
					<input type="submit" name="submit" value="Log in" class="btn-sign-in" title="Log in" />
					<input type="reset" name="cancel" value="Cancel" class="btn-sign-up" title="Cancel" />

				</tr>
				<tr>
					<td><td>
				</tr>
				<tr>
					<td align="left"><a href="sendcode.php"><u>Forgot Password?</u></a></td>
					
					
	</form>
			</table>
		
		</div>
	</div>

</body>

</html>