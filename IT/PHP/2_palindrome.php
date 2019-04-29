<!DOCTYPE html>
<html>
<head>
	<title>Palindrome Number</title>
</head>
<body bgcolor="#BDC3E8">
	<center>
		<h1 style="font-family:san serif; color:#174E8A">P A L I N D R O M E &nbsp;&nbsp;&nbsp;  N U M B E R</h1>
		<hr style="color:#0054AF;"><br>
		<form method="post"  style="color:#0054AF">
			<input type="text" name="num" id="num" required placeholder="Enter the number">&nbsp
			<span id="msg" style="color:#AF001E";></span><br><br>
			<input type="submit" name="submit" value="check" style="background-color:#399E33; color:#0F490A;border-radius:5px; size:20px">
		<?php
		if(isset($_POST['submit']))
		{
		 	$num=$n=$_POST['num'];
		 	$a=0; $r=0;
		 	while($n>0)
		 	{
				$r=floor($n%10);
				$a=floor($a*10+$r);
				$n=floor($n/10);
			}
			if($a==$num)
			{	?>
				<script type="text/javascript">
				document.getElementById("msg").style.color="green";
				document.getElementById("msg").innerHTML="<?php echo $num;?> is a Palindrome Number";
				</script>
	<?php 	}
			else{
			  ?>
				<script type="text/javascript">
				document.getElementById("msg").style.color="red";
				document.getElementById("msg").innerHTML="<?php echo $num;?> is not a Palindrome Number";
				</script>
	<?php }
		 	
		}
	?>
		
		</form>
	</center>
</body>

</html>

