<?php
session_start();
	require "php/config.php";
	require_once "php/functions.php";
	$user = new login_registration_class();
	$admin_id = $_SESSION['admin_id'];
	$admin_name = $_SESSION['admin_name'];
	if(!$user->get_admin_session()){
		header('Location: index.php');
		exit();
	}
?>	
<?php 
$pageTitle = "Manage Courses";
include "php/headertop_admin.php";
?>
	<div class="st_reg fix" style="height:80vh">
		<h2 style="color:#ddd;background:#3498db">Manage Courses</h2>
		
						
	<form action="" method="post">
		
		<table class="tab_one" style="text-align:center;">
			<tr>
				<th style="text-align:center;">SL</th>
				<th style="text-align:center;">Course Name</th>
				<th style="text-align:center;">Course Desc</th>
				<th style="text-align:center;">Course Duration</th>
				<th style="text-align:center;">Action</th>
	
				
			</tr>
			<?php 
			$i=0;
			$sub_res = $user->get_courses();
			while($row = $sub_res->fetch_assoc()){
				$i++;
				
			?>
			<tr>
				<td><?php echo $i;?></td>
				<td><?php echo $row['cs_name'];?></td>
				<td><?php echo $row['cs_desc'];?></td>
				<td><?php echo $row['cs_duration'];?></td>
				<td>
					<a href="delete_course.php?cs_id=<?=$row['cs_id']?>">Delete</a>
				</td>
			</tr>
			<?php } ?>
	
		</table>
		
	</form>
			</div>
		

	</div>
	<?php include "footer.php"; ?>

