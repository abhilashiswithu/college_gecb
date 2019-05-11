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
					<a href="index.php"><h1 id="hh1">S T U D E N T  &nbsp; M A N A G E M E N T  &nbsp; S Y S T E M</h1></a><br><hr>
			</div>
			
			<div class="div1"><br><br>
				<div class="div2"><br>
					<h3 id="hh2"> S E A R C H  &nbsp;  S T U D E N T &nbsp; R E C O R D </h3><hr>
					<form name="myform" method="post">
							<table border="0">
								<tr>
									<th><input type="search" name="search" placeholder="Search rollno. ...">
									<button class="search1" type="submit" name="submit">&#128269;</button></th>
								</tr>
							</table>
						</form><hr><br>
						<table class="table1">
							<tr>
								<th class="th1">RollNo.</th>
								<th class="th1">Name</th>
								<th class="th1">Gender</th>
								<th class="th1">Branch</th>
								<th class="th1">Email ID</th>
								<th class="th1">Address</th>
							</tr>
							
							<?php
								if(isset($_POST['submit']))
								{
									$rno=$_POST['search'];
									
									$sql = "SELECT * FROM stud_details WHERE rno=".$rno."";
									$result = mysqli_query($con, $sql);
									$row=mysqli_fetch_array($result,MYSQLI_ASSOC);
									if($row!=NULL)
									{
										echo "<tr>
												<td>".$row['rno']."</td>
												<td>".$row['name']."</td>
												<td>".$row['gender']."</td>
												<td>".$row['branch']."</td>
												<td>".$row['email']."</td>
												<td>".$row['address']."</td>
											</tr>";
									}
									else
									{
										echo "<tr>
												<td colspan='6'>NO FOUND</td>
											</tr>";
									}
								}	
							?>
							
						</table>
						<hr>
					<a href="index.php" class="lfloat monospace link">&nbsp;&#127968;&nbsp;&#9615;</a>
					<a href="index.php" class="lfloat monospace link">&#128281;</a>
					<br>
					<br>
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
