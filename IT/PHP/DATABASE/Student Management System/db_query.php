
<?php
	include ("db_connect.php");
	if(isset($_POST["submit"]))
	{
		$rno=$_POST["rno"];
		$name=$_POST["name"];
		$email=$_POST["email"];
		$add=$_POST["add"];
		$gender=$_POST["gender"];
		$branch=$_POST["branch"];
		
		$sql="INSERT INTO  stud_details (rno,name,gender,branch,email,address)
		 VALUES (".$rno.",'".$name."','".$gender."','".$branch."','".$email."','".$add."')";
		if(mysqli_query($con, $sql))
		{
			echo "<script>
				alert('**** New Record created SUCCESSFULL ****')
				window.location.replace('registration.php')
			</script>";
		}
	else
		{
			echo "<script>
				alert('**** ERROR OCCURED ****')
				window.location.replace('registration.php')
			</script>";
		}
	}
?>
