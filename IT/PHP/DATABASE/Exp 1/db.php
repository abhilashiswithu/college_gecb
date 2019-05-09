<?php require ("dbconnect.php");?>
<!DOCTYPE html>
<html>
	<head>
		<title>Registration</title>
	</head>
	<body bgcolor="#4D8CC7">
		<center>
			<h1>FORM REGISTRATION</h1><br><hr>
			<form method="post" action="phpquery.php">
				<table border="0">
					<tr>
						<th><label>Roll No. :</label></th>
						<td><input type="number" name="rno" id="rno" required></td>
					</tr>
					<tr>
						<th><label>Name :</label></th>
						<td><input type="name" name="name" id="name" required></td>
					</tr>
					<tr>
						<th><label>Gender :</label></th>
						<td><input type="radio" name="gender" id="gender" value="M" required>&nbsp;Male&nbsp;
						<input type="radio" name="gender" id="gender" value="F" required>&nbsp;Female&nbsp;
						<input type="radio" name="gender" id="gender" value="T" required>&nbsp;Trans&nbsp;</td>
					</tr>
					<tr>
						<th><label>Branch :</label></th>
						<td><select name="branch">
							<option></option>
							<option value="IT">IT</option>
							<option value="CE">CE</option>
							<option value="ME">ME</option>
							<option value="EEE">EEE</option>
							<option value="EC">EC</option>
						</select></td>
					</tr>
					<tr>
						<th><label>Email ID :</label></th>
						<td><input type="email" name="email" id="email" required></td>
					</tr>
					<tr>
						<th><label>Address :</label></th>
						<td><textarea name="add" id="add" required cols="30" rows="4" style=" border-radius:5px;"> </textarea></td>
					</tr>
					<tr>
						<th><input type="reset" name="reset" value="Reset" style="background-color:#EE3546; color:white; border-radius:5px;"></th>
						<td><input type="submit" name="submit"  value="Submit" style="background-color:#4F8C2E; color:white; border-radius:5px;"></td>
					</tr>
				</table>
			</form><br><br><br><br><br><br><br><br><br>
			<footer>
				<hr>
				copyright&copy2019
			</footer>
		</center>
		
	</body>
</html>
