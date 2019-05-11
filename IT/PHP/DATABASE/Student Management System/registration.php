<?php require ("db_connect.php");?>
<!DOCTYPE html>
<html>
	<head>
		<title>Student Management System</title>
		<link rel="stylesheet" type="text/css" href="form.css"> 
		<script src="script1.js"></script>
	</head>
	<body bgcolor="#D0DFED">
		<center>
			<div class="fixed1">
				<br>
					<a href="index.php"><h1 id="hh1"> S T U D E N T  &nbsp; M A N A G E M E N T  &nbsp; S Y S T E M </h1></a><br><hr>
			</div>
			
			<div class="div1"><br>
				<div class="div2"><br>
					<h3 id="hh2"> S T U D E N T  &nbsp; R E G I S T R A T I O N </h3><hr>
					<form name="myform" method="post" action="db_query.php" onsubmit="return validateform()">
						<table border="0">
							<tr>
								<th><label>Roll No.<font class="f1">*</font> :</label></th>
								<td><input type="number" name="rno" id="rno" required></td>
							</tr>
							<tr>
								<th><label>Name<font class="f1">*</font> :</label></th>
								<td><input type="text" name="name" id="name"required></td>
							</tr>
							<tr>
								<th><label>Gender<font class="f1">*</font> :</label></th>
								<td><input type="radio" name="gender" id="gender" value="M" required>&nbsp;<font class="f2">Male</font>&nbsp;
								<input type="radio" name="gender" id="gender" value="F" required>&nbsp;<font class="f2">Female</font>&nbsp;
								<input type="radio" name="gender" id="gender" value="T" required>&nbsp;<font class="f2">Trans</font>&nbsp;</td>
							</tr>
							<tr>
								<th><label>Branch<font class="f1">*</font> :</label></th>
								<td><select name="branch" required >
									<option></option>
									<option value="IT">IT</option>
									<option value="CE">CE</option>
									<option value="ME">ME</option>
									<option value="EEE">EEE</option>
									<option value="EC">EC</option>
								</select></td>
							</tr>
							<tr>
								<th><label>Email ID<font class="f1">*</font> :</label></th>
								<td><input type="email" name="email" id="email" style=" border-radius:6px;" required></td>
							</tr>
							<tr>
								<th><label>Address<font class="f1">*</font> :</label></th>
								<td><textarea name="add" id="add" required></textarea></td>
							</tr>
							<tr>
								<th><input type="reset" name="reset" value="Reset"></th>
								<td><input type="submit" name="submit"  value="Submit"></td>
							</tr>
						</table>
						<hr>
					<a href="index.php" class="lfloat monospace link">&nbsp;&#127968;&nbsp;&#9615;</a>
					<a href="index.php" class="lfloat monospace link">&#128281;</a>
					<br>
					</form><br>
				</div><br>
			</div>
			
			<div class="fixed2">
				<footer>
					<hr><br>
					copyright&copy2019
				</footer><br><br>
			</div>
		</center>
		
	</body>
</html>
