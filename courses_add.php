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
$pageTitle = "Add Course";
include "php/headertop_admin.php";
?>
	<div class="st_reg fix" style="height:80vh">
		<h2 style="color:#ddd;background:#3498db">Add Courses</h2>
		<p class="msg">
				<?php
					if($_SERVER['REQUEST_METHOD'] == "POST"){
						$cs_name = $_POST['cs_name'];
						$cs_desc = $_POST['cs_desc'];
						$cs_duration = $_POST['cs_duration'];

						
						if(empty($cs_name) or empty($cs_desc) or empty($cs_duration )){
							echo "<p style='color:red;text-align:center'>**Field must not be empty**</p>";
						}else{
							$cs_save = $user->cs_save($cs_name,$cs_desc,$cs_duration);
							if($cs_save){
								echo "<h3 style='color:green;margin:0;padding:0;text-align:center'>Course Add Complete !!</h3>";
							}else{
								echo "<p style='color:red;text-align:center'>Something went wrong!</p>";
							}
						}
					}
				?>
			
			</p>
			<div class="cs_form">
				<form action="" method="post">
				<table>
					<tr>
						<th>Course Name: </th>
						<td><input type="text" name="cs_name" placeholder="Course Name" required /></td>
					</tr>
					<tr>
					<tr>
						<th>Course Desc: </th>
						<td><textarea type="text" name="cs_desc" placeholder="Description" required></textarea></td>
					</tr>
					<tr>
						<th>Course Duration (Enter in no of months): </th>
						<td><input type="text" name="cs_duration" placeholder="<< Sample: 2 [for 2 months] >>" required /></td>
					</tr>
					<tr>
						<td colspan="2"><input style="color:#ddd;background:#3498db" type="submit" name="sub" value="Add Course" /></td>
					</tr>
				</table>
			</form>
			</div>
		

	</div>

<?php include "footer.php"; ?>

