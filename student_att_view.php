<?php
session_start();
	require "php/config.php";
	require_once "php/functions.php";
	$user = new login_registration_class();
	$sid = $_SESSION['sid'];
	$sname = $_SESSION['sname'];
	if(!$user->getsession()){
		header('Location: st_login.php');
		exit();
	}
?>	
<?php 
$pageTitle = "Student Profile";
include "php/headertop.php";
?>
	<div class="st_reg fix" style="height:80vh">
		<h2 style="color:#ddd;background:#3498db">View Attendance</h2>
						
		<div>
	<p style="text-align:center;color:#fff;background:purple;margin:0;padding:8px;"><?php echo "Name: ".$sname."<br>Student ID: " . $sid; ?></p>
	</div>	
	<form action="" method="post">
		
		<table class="tab_one" style="text-align:center;">
			<tr>
				<th style="text-align:center;">SL</th>
				<th style="text-align:center;">Date</th>
				<th style="text-align:center;">Attendance Status</th>
			</tr>
			<?php 
			$i=0;
			$res = $user->get_student_att($sid);
			while($row = $res->fetch_assoc()){
				$i++;

			?>
			<tr>
				<td><?php echo $i;?></td>
				<td><?php echo $row['at_date'];?></td>
				<td><?php echo $row['atten'];?></td>
			</tr>
			<?php } ?>
	
		</table>
		
	</form>
			</div>
		

	</div>
	
<?php include "php/footerbottom.php";?>

