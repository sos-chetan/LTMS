<?php
ob_start();
session_start();
require "php/config.php";
require_once "php/functions.php";
$user = new login_registration_class();
$fid = $_SESSION['f_id'];
$funame = $_SESSION['f_uname'];
$fname = $_SESSION['f_name'];
if(!$user->get_faculty_session()){
	header('Location: facultylogin.php');
	exit();
}
?>	
<?php 
$pageTitle = "Add Subject";
include "php/headertop.php";
?>
	<div class="st_reg fix" style="height:80vh">
		<h2 style="color:#ddd;background:#3498db">Add Subject</h2>
		<p class="msg">
				<?php
					if($_SERVER['REQUEST_METHOD'] == "POST"){
						$sub_name = $_POST['sub_name'];
						$sub_desc = $_POST['sub_desc'];
						$cs_id = $_POST['cs_name'];
					
						
						if(empty($sub_name) or empty($sub_desc) or empty($cs_id )){
							echo "<p style='color:red;text-align:center'>**Field must not be empty**</p>";
						}else{
							$sub_save = $user->sub_save($sub_name,$sub_desc,$cs_id);
							if($sub_save){
								echo "<h3 style='color:green;margin:0;padding:0;text-align:center'>Subject Add Complete !!</h3>";
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
						<th>Subject Name: </th>
						<td><input type="text" name="sub_name" placeholder="Subject Name" required /></td>
					</tr>
					<tr>
					<tr>
						<th>Subject Desc: </th>
						<td><textarea type="text" name="sub_desc" placeholder="Description" required></textarea></td>
					</tr>

					
					<tr>
						<th>Subject Course: </th>
						<td><select name="cs_name">
						<?php
							$cs_res = $user->get_courses();

							while($row = $cs_res->fetch_assoc()){
						?>
							<option value="<?=$row['cs_id']?>"><?=$row['cs_name']?></option>
						<?php }?>
					</select></td>
					</tr>
					

					<tr>
						<td colspan="2"><input style="color:#ddd;background:#3498db" type="submit" name="sub" value="Add Subject" /></td>
					</tr>
				</table>
			</form>
			</div>
		

	</div>
	<?php
include "php/footerbottom.php";
ob_end_flush();
?>