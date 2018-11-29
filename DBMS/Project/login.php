<?php 

	session_start();

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
										
										if(isset($_POST['login']))
										{
											$name=$_POST['name'];
											$pass=$_POST['pass'];
											
						   
											$sql="select * from customer where c_name='".$name."'";
											$res = pg_query($db,$sql);
											$result= pg_fetch_array($res);
											if($result[1]==$name)
											{		
													$_SESSION['unam']=$name;
												$sql1="select * from customer where c_password='".$pass."'";
												$res1 = pg_query($db,$sql1);
												$result1= pg_fetch_array($res1);
												if($result1[3]==$pass)
												{		
													$_SESSION['uid']=$result1[0];
												
													echo"<script>
														alert('LOGIN SUCCESSFULLY');
														window.location='index2.php';
													</script>";
												}	
											}
											else
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
