<?php
	include ("dbconnect.php");

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
		if (mysqli_query($con, $sql))
		{
			?><script> alert("****New Record created SUCCESSFULL****");</script><?php
			header("location:db.php");
			
		}
	else {
            ?><script> alert("ERROR");</script><?php
			header("location:db.php");
         }
		
	}
?>
