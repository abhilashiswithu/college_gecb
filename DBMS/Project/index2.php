
<?php
	session_start();
	
	include("header.php");
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
			  <label ><?php echo "".$_SESSION['unam']; ?></label>
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
							 
							 
					
                    </div>
                        </div>
                       
                </div>
                    <div class="row">
                    <div class="col-md-12">
                       <div class="panel panel-info">
                       
  
                    <div class="table-responsive">
                    	<div id="screen">
                            <div class="alert alert-info">
                           		 <center><strong><font color=#366B9A size=5px>MOVIES</font></strong></center>
                            </div>
					<form method="post">
                            <table class="table  table-bordered table-hover1">
                            
                                    <tr>
										<th><h3>Name</h3></th>
										<th><h3>Genre</h3></th>
										<th><h3>Duration</h3></th>
										<th><h3>N0. of Show</h3></th>
										<th><h3>Book</h3></th>
                                    </tr>
										
										<?php 
										
											require("db.php");

											$sql="select * from movie";
											if($res = pg_query($db,$sql))
											{
												while($result=pg_fetch_row($res)){ ?>	
                           <tr>
								<td><?php echo"".$result[1]; ?></td>
								<td><?php echo"".$result[4]; ?></td>
								<td><?php echo"".$result[3]; ?></td>
								<td><?php echo"".$result[2]; ?></td>
								<td><input type="submit" size="10px" class="btn btn-xs btn-primary " name="submit" value="<?php echo"".$result[0]; ?>"></td>
                           </tr>
                           <?php }
											}
										?>
								</table>
                            </form>
                          </div>
                         </div>
                  </div>        
                <?php
                    if(isset($_POST['submit']))
                    {
						$_SESSION['mid']=$_POST['submit'];
						
						header("Location:booking.php");
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
