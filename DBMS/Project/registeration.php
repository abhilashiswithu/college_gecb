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
                           
                           		 <center><strong><font color=#366B9A size=5px>SIGN UP</font></strong></center>
                           
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
                                    
                                        <div class="form-group row">
											<div class="col-md-7">
                                            <label>Phone Number :</label>
                                            <input class="form-control" type="text" name="ph"required placeholder="Example@: 9********* ">
                                            </div>
                                        </div>
                                        <div class="form-group row">
											<div class="col-md-7">
                                            <label>E-mail :</label>
                                            <input class="form-control" type="email" name="email"required placeholder="Example@: 12345@_mail.com">
                                            </div>
                                        </div>
                                        <input type="submit" class="btn btn-info" name="submit" value="SUBMIT">
                    </form>
                    <?php
                    if(isset($_POST['submit']))
                    {
						$name=$_POST['name'];
						$pass=$_POST['pass'];
						$email=$_POST['email'];
						$ph=$_POST['ph'];
						/*$insert=pg_query($db, select c_insert('".$name."','".$email."','".$p"','".$ph."');
						if($insert)
						{
							
											$sql="select * from customer where c_name='".$name."'";
											$res = pg_query($db,$sql);
											$result= pg_fetch_array($res);
											$_SESSION['uid']=$result[0];
								echo"<script>
									alert('REGISTERED SUCCESSFULLY');
									window.location='booking.php';
								</script>";
						}
						else
						{
								echo "Some Error Occoured ".pg_result_error() ;
								echo"<script>
									window.location='registeration.php';
								</script>";
						}
						*/
						
					}
                    ?>
                           </div>
                        </div>
                    
                </div>

            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    
    

<?php  ?>
</body>
</html>
