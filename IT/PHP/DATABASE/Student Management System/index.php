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
					<table border="0">
						<tr>
							<th class="th1"><button class="button1" onclick="redirect(1)"> R E G I S T R A T I O N </button></th>
						</tr>
						<tr>
							<th class="th1"><button class="button1" onclick="redirect(2)"> S E A R C H </button></th>
						</tr>
						<tr>
							<th class="th1"><button class="button1" onclick="redirect(3)"> D I S P L A Y </button></th>
						</tr>
						<tr>
							<th class="th1"><button class="button1" onclick="redirect(4)"> D E L E T E </button></th>
						</tr>
					</table><br>
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
