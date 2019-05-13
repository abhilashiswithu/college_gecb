<?php
	include ("db_connect.php");
	session_start();
	$sql1 = "DELETE  FROM stud_details WHERE rno=".$_SESSION['rno']."";
	if(mysqli_query($con,$sql1))
	{
		echo "<script>
			alert('".$_SESSION['name']."\u2019\u02E2 record is DELETED')
			window.location.replace('delete.php')
			</script>";
			session_destroy();
	}
	else
	{
		echo "<script>
			alert('**** ERROR OCCURED ****')
			window.location.replace('delete.php')
			</script>";
			session_destroy();
	}
?>
