<?php include ("db_connect.php"); 
session_start();
?>
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
					<h3 id="hh2"> D E L E T E  &nbsp;  S T U D E N T &nbsp; R E C O R D </h3><hr>
						<table class="table1">
							<tr>
								<th class="th1">RollNo.</th>
								<th class="th1">Name</th>
								<th class="th1">Gender</th>
								<th class="th1">Branch</th>
								<th class="th1">Email ID</th>
								<th class="th1"></th>
							</tr>
							
							<?php
							include ("db_connect.php");
								$sql = "SELECT * FROM stud_details ORDER BY rno ASC";
								$result = mysqli_query($con, $sql);
								while($row=mysqli_fetch_array($result,MYSQLI_ASSOC))
								{
									echo "<tr>
											<td>".$row['rno']."</td>
											<td>".$row['name']."</td>
											<td>".$row['gender']."</td>
											<td>".$row['branch']."</td>
											<td>".$row['email']."</td>
											<td><form method='post'>
											<input type='hidden' value='".$row['rno']."' name='rno'>
											<input type='hidden' value='".$row['name']."' name='name'>
											<button class='delete1' type='submit' name='submit'>&#10006;</button>
											</form></td>
										</tr>";
								}
								if(isset($_POST['submit']))
								{
									$_SESSION['rno'] = $_POST['rno'];
									$_SESSION['name'] = $_POST['name'];
									echo"<script type='text/javascript'>
										var res=confirm('Do you want to delete ".$_POST['name']."\u2019\u02E2 record');
										if(res==true)
										{
											window.location.replace('delete1.php')
										}
										else
										{
											window.location.replace('delete.php')
										}
									</script>";
								}
							?>
							
						</table>
						<hr>
					<a href="index.php" class="lfloat monospace link">&nbsp;&#127968;&nbsp;&#9615;</a>
					<a href="index.php" class="lfloat monospace link">&#128281;</a>
					<br><br>
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
