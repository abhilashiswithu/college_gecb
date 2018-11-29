<?php session_start(); ?>
<?php
//session_start();
/*if($_SESSION['na']==NULL)
{
	//header("location:login-user-if.php");
	?><script> location.replace("../login-username.php"); </script><?php
}
else*/

	include("db.php");
	include("header.php");
?>
           <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line"><center><a href="index.php">MOVIE TICKET BOOKING</a></center></h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-9">
                       <div class="panel panel-info">
                        <div class="panel-heading">
                         
                           		 <center><strong><font color=#366B9A size=5px>SIGN IN</font></strong></center>
                        </div>
                        <div class="panel-body">
                       
                    <form method='POST' autocomplete="on" enctype="multipart/form-data" >
                    
                    
                    
										<div class="form-group row"><br>
										<div class="col-md-7">
                                            <label>Name :</label>
                                            <input class="form-control" type="text" name="name"required placeholder="Example@: Felix" >
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
											<div class="col-md-7">
                                            <label>Passcode :</label>
                                            <input class="form-control" type="password" name="pass"required placeholder="Example@: *********">
                                            </div>
                                        </div>
                                    
                                        <input type="submit" class="btn btn-info" name="login" value="SIGNIN">
                    </form>
                                    <?php
										include("db.php");
										$flag=0;
										//echo"".encryptIt('hosct')."<br/>";
										if(isset($_POST['next']))
										{
											
											$na=encryptIt($_POST['username']);
											$sql=mysql_query("Select * from login where log_status='Active'");
											while($fsql= mysql_fetch_array($sql))
											{
												$flag=0;
												if($fsql['log_username']==$na)
												{
													$flag=0;
													$_SESSION['uname']=$_POST['username'];
													//echo"".$_SESSION['uname'];
													header("Location:login-password.php");
												}
												else
												{
													$flag=1;
												}
											}
											if($flag=1)
											{
													echo "<script>alert('SORRY! Invalid User');</script>";
											}
											
											
										}
                                    ?>
                            </div>
                        </div>
        </div>
    </div>
</body>
</html>
