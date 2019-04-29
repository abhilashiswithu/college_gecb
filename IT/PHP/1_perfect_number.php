<!DOCTYPE html>
<html>
<head>
	<title>Perfect Number</title>
</head>
<body bgcolor="#92CDD2">
	<center>
		<h1 style="font-family:san serif; color:#0054AF">P E R F E C T &nbsp;&nbsp;&nbsp;  N U M B E R</h1>
		<hr style="color:#0054AF;"><br>
		<form method="post"  style="color:#0054AF">
			<input type="text" name="num" id="num" required placeholder="Enter the number">&nbsp
			<span id="msg" style="color:#AF001E";></span><br><br>
			<input type="submit" name="submit" value="check" style="background-color:#399E33; color:#0F490A;border-radius:5px; size:20px">
		<?php
		if(isset($_POST['submit']))
		{
		 	$num=$_POST['num'];
		 	$sum=0;
		 	for($i=1; $i<$num;$i++)
		 	{
				if($num%$i==0)
				{
						$sum=$sum+$i;
				}
			}
			if($sum==$num)
			{?>
				<script type="text/javascript">
				document.getElementById("msg").style.color="green";
				document.getElementById("msg").innerHTML="<?php echo $num;?> is a perfect number";
				</script>
	<?php 	}
			else
			{
			  ?>
				<script type="text/javascript">
				document.getElementById("msg").style.color="red";
				document.getElementById("msg").innerHTML="<?php echo $num;?> is not a perfect number";
				</script>
	<?php 
			}
		}
	?>
		
		</form>
	</center>
</body>

</html>

