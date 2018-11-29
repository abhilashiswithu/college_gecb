<?php
	
	session_start();
	$uid=$_SESSION['uid'];
	include("header.php");
	require("db.php");
?>
                     <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line"><center><a href="index.php">MOVIE TICKET BOOKING</a></center></h1>
                        <div class="page-head-line">					 
							 
		<?php
		if($_SESSION['uid']!=NULL)
       {
		?>
		  <form method="POST">
					<input style="float: right; size="5px" type="submit" name="logout" class="btn btn-danger " value="Logout">
				</form>   
          <?php
				if(isset($_POST['logout']))
				{
					date_default_timezone_set('Asia/Kolkata');

					$timestamp = time();
					$date_time = date("d-m-Y (D) H:i:s", $timestamp);
					{
						unset( $_SESSION['uid']);
						header("location:index.php");
					}
				} 
		}?>
			
                                            
                                        <a class="btn btn-primary" href="index2.php" style="float:right;">BACK</a>
			<br>
                    </div>
                        </div>
                       
                </div>
                <div class="row">
                    <div class="col-md-12">
                       <div class="panel panel-info">
						   <?php
											$mid=$_SESSION['mid'];
											$sql="select * from movie where m_id=".$mid."";
											$res = pg_query($db,$sql);
											$result= pg_fetch_array($res);
							?>
                    <div class="table-responsive">
                    	<div id="screen">
                            <div class="alert alert-info">
                           		 <center><strong><font color=#366B9A size=5px>PAYMENT</font></strong></center>
                            </div>
					<form method="post">
                    <center>
										<div class="col-md-6" style="algin:center;">
											<div class="alert alert-info">
											
											<label>BILL NO.: <?php echo $_SESSION['bill'];  ?></label>
                                            <br>
                                            <label>TRANSACTION ID: <?php echo $_SESSION['trans'];  ?></label>
                                            <br>
                                            <label>NAME : <?php echo $_SESSION['unam'];  ?></label>
                                            <br>
                                            <label>MOVIE : <?php echo"".$result[1]; ?></label>
                                            <br>
                                            <label>NUMBER OF SEATS : <?php echo $_SESSION['sno'];?></label>
                                            <br>
                                            
                                            <label>AMOUNT : <?php echo $_SESSION['amt']; ?></label>
                                            <br>
                                        </div>
                                        </div>
                                        
                                    
                                        </center>
                    </form>
                            </form>
                            </div>
                            </div>
                  </div>        
                <?php
                    if(isset($_POST['submit']))
                    {
						
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
    
</body>
</html>

