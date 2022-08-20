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
$pageTitle = "Manage Subjects";
include "php/headertop_admin.php";
?>
	<div class="st_reg fix" style="height:80vh">
		<h2 style="color:#ddd;background:#3498db">Manage Subjects</h2>
						
	<form action="" method="post">
		
		<table class="tab_one" style="text-align:center;">
			<tr>
				<th style="text-align:center;">SL</th>
				<th style="text-align:center;">Subject Name</th>
				<th style="text-align:center;">Subject Desc</th>
				<th style="text-align:center;">Course</th>
				<th style="text-align:center;">Action</th>
	
				
			</tr>
			<?php 
			$i=0;
			$sub_res = $user->get_subjects();
			while($row = $sub_res->fetch_assoc()){
				$i++;
				$cs_name = $user->get_course_by_id($row['cs_id']);
			?>
			<tr>
				<td><?php echo $i;?></td>
				<td><?php echo $row['sub_name'];?></td>
				<td><?php echo $row['sub_desc'];?></td>
				<td><?php echo $cs_name?></td>
				<td>
					<a href="delete_subject.php?sub_id=<?=$row['sub_id']?>">Delete</a>
				</td>
			</tr>
			<?php } ?>
	
		</table>
		
	</form>
			</div>
		

	</div>
	<?php include "footer.php"; ?>

