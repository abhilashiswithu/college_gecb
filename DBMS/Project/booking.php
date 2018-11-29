<?php
	
	session_start();
	
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
							 
		<?php $_SESSION['uid']=1;
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
                           		 <center><strong><font color=#366B9A size=5px><?php echo"".$result[1]; ?></font></strong></center>
                            </div>
					<form method="post">
                            <table class="table  table-bordered table-hover1">
								<tr>
									<th>ROW</th>
									<th><label>1</label></th>
									<th><label>2</label></th>
									<th><label>3</label></th>
									<th><label>4</label></th>
									<th><label>5</label></th>
									<th>| |</th>
									<th><label>6</label></th>
									<th><label>7</label></th>
									<th><label>8</label></th>
									<th><label>9</label></th>
									<th><label>10</label></th>
								</tr>
                                    <tr>
										<?php
											$asql="select * from seat where s_row='A'";
											if($ares = pg_query($db,$asql))
											{
												while($ar=pg_fetch_row($ares))
												{
										echo"
										<th>A</th>
										<td>"; if($ar[2]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=A1 name=A1>";} echo "</td>
										<td>"; if($ar[3]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=A2 name=A2>";} echo "</td>
										<td>"; if($ar[4]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=A3 name=A3>";} echo "</td>
										<td>"; if($ar[5]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=A4 name=A4>";} echo "</td>
										<td>"; if($ar[6]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=A5 name=A5>";} echo "</td>
									<td>| |</td>
										<td>"; if($ar[7]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=A6 name=A6>";} echo "</td>
										<td>"; if($ar[8]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=A7 name=A7>";} echo "</td>
										<td>"; if($ar[9]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=A8 name=A8>";} echo "</td>
										<td>"; if($ar[10]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=A9 name=A9>";} echo "</td>
										<td>"; if($ar[11]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=A10 name=A10>";} echo "</td>";
												}
											}
										?>
                                    </tr>
                                    <tr>
										<?php
											$bsql="select * from seat where s_row='B'";
											if($bres = pg_query($db,$bsql))
											{
												while($br=pg_fetch_row($bres))
												{
										echo"
										<th>B</th>
										<td>"; if($br[2]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=B1 name=B1>";} echo "</td>
										<td>"; if($br[3]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=B2 name=B2>";} echo "</td>
										<td>"; if($br[4]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=B3 name=B3>";} echo "</td>
										<td>"; if($br[5]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=B4 name=B4>";} echo "</td>
										<td>"; if($br[6]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=B5 name=B5>";} echo "</td>
									<td>| |</td>
										<td>"; if($br[7]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=B6 name=B6>";} echo "</td>
										<td>"; if($br[8]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=B7 name=B7>";} echo "</td>
										<td>"; if($br[9]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=B8 name=B8>";} echo "</td>
										<td>"; if($br[10]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=B9 name=B9>";} echo "</td>
										<td>"; if($br[11]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=B10 name=B10>";} echo "</td>";
                                    		}
											}
										?>
                                    </tr>
                                    <tr>
										<?php
											$asql="select * from seat where s_row='C'";
											if($ares = pg_query($db,$asql))
											{
												while($ar=pg_fetch_row($ares))
												{
										echo"
										<th>C</th>
										<td>"; if($ar[2]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=C1 name=C1>";} echo "</td>
										<td>"; if($ar[3]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=C2 name=C2>";} echo "</td>
										<td>"; if($ar[4]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=C3 name=C3>";} echo "</td>
										<td>"; if($ar[5]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=C4 name=C4>";} echo "</td>
										<td>"; if($ar[6]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=C5 name=C5>";} echo "</td>
									<td>| |</td>
										<td>"; if($ar[7]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=C6 name=C6>";} echo "</td>
										<td>"; if($ar[8]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=C7 name=C7>";} echo "</td>
										<td>"; if($ar[9]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=C8 name=C8>";} echo "</td>
										<td>"; if($ar[10]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=C9 name=C9>";} echo "</td>
										<td>"; if($ar[11]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=C10 name=C10>";} echo "</td>";
                                    		}
											}
										?>
                                    </tr>
                                    <tr>
										<?php
											$asql="select * from seat where s_row='D'";
											if($ares = pg_query($db,$asql))
											{
												while($ar=pg_fetch_row($ares))
												{
										echo"
										<th>D</th>
										<td>"; if($ar[2]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=D1 name=D1>";} echo "</td>
										<td>"; if($ar[3]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=D2 name=D2>";} echo "</td>
										<td>"; if($ar[4]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=D3 name=D3>";} echo "</td>
										<td>"; if($ar[5]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=D4 name=D4>";} echo "</td>
										<td>"; if($ar[6]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=D5 name=D5>";} echo "</td>
									<td>| |</td>
										<td>"; if($ar[7]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=D6 name=D6>";} echo "</td>
										<td>"; if($ar[8]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=D7 name=D7>";} echo "</td>
										<td>"; if($ar[9]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=D8 name=D8>";} echo "</td>
										<td>"; if($ar[10]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=D9 name=D9>";} echo "</td>
										<td>"; if($ar[11]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=D10 name=D10>";} echo "</td>";
                                    		}
											}
										?>
                                    </tr>
                                    <tr>
										<?php
											$asql="select * from seat where s_row='E'";
											if($ares = pg_query($db,$asql))
											{
												while($ar=pg_fetch_row($ares))
												{
										echo"
										<th>E</th>
										<td>"; if($ar[2]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=E1 name=E1>";} echo "</td>
										<td>"; if($ar[3]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=E2 name=E2>";} echo "</td>
										<td>"; if($ar[4]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=E3 name=E3>";} echo "</td>
										<td>"; if($ar[5]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=E4 name=E4>";} echo "</td>
										<td>"; if($ar[6]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=E5 name=E5>";} echo "</td>
									<td>| |</td>
										<td>"; if($ar[7]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=E6 name=E6>";} echo "</td>
										<td>"; if($ar[8]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=E7 name=E7>";} echo "</td>
										<td>"; if($ar[9]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=E8 name=E8>";} echo "</td>
										<td>"; if($ar[10]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=E9 name=E9>";} echo "</td>
										<td>"; if($ar[11]==1){echo' <B>BOOKED</B>';} else {echo "<input type=checkbox value=E10 name=E10>";} echo "</td>";
                                    		}
											}
										?>
                                    </tr>
								
                            </table>
                            <br>
                                        <input type="submit" class="btn btn-info"  style="float: right; name="submit" value="SUBMIT">
                            </form>
                            </div>
                            </div>
                  </div>        
                <?php
                    if(isset($_POST['submit']))
                    {
						$a=$b=$c=$d=$e=0;
						require("db.php");
						for($i=1; $i<=10;$i++)
						{
							if(isset($_POST['A'.$i]))
							{
								$a++;
							}
							if(isset($_POST['B'.$i]))
							{
								$b++;
							}
							if(isset($_POST['C'.$i]))
							{
								$c++;
							}
							if(isset($_POST['D'.$i]))
							{
								$d++;
							}
							if(isset($_POST['E'.$i]))
							{
								$e++;
							}
						}
						if(($a+$b+$c+$d+$e)>5)
						{
								echo"<script>
						alert('SORRY!!!, Only Max. 5 seat can be book');
						window.location='booking.php';
					</script>";
						}
						else
						{
							
						for($i=1; $i<=10;$i++)
						{
							if(isset($_POST['A'.$i]))
							{
								$sqla="update seat set s_".$i."=1 where s_row='A'";
								if(pg_query($db,$sqla))
								{
								echo"<script>
									alert('SEAT is selected SUCCESSFULLY');
									window.location='registeration.php';
								</script>";
								}
							}
							if(isset($_POST['B'.$i]))
							{
								$sqla="update seat set s_".$i."=1 where s_row='B'";
								if(pg_query($db,$sqla))
								{
								echo"<script>
									alert('SEAT is selected SUCCESSFULLY');
									window.location='registeration.php';
								</script>";
								}
							}
							if(isset($_POST['C'.$i]))
							{
								$sqla="update seat set s_".$i."=1 where s_row='C'";
								if(pg_query($db,$sqla))
								{
								echo"<script>
									alert('SEAT is selected SUCCESSFULLY');
									window.location='registeration.php';
								</script>";
								}
							}
							if(isset($_POST['D'.$i]))
							{
								$sqla="update seat set s_".$i."=1 where s_row='D'";
								if(pg_query($db,$sqla))
								{
								echo"<script>
									alert('SEAT is selected SUCCESSFULLY');
									window.location='registeration.php';
								</script>";
								}
							}
							if(isset($_POST['E'.$i]))
							{
								$sqla="update seat set s_".$i."=1 where s_row='E'";
								if(pg_query($db,$sqla))
								{
								echo"<script>
									alert('SEAT is selected SUCCESSFULLY');
									window.location='registeration.php';
								</script>";
								}
							}
						}
						
						}
						
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

