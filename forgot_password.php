<?php
    session_start();
	require "php/config.php";
	require_once "php/functions.php";
	$user = new login_registration_class();

    if($user->get_faculty_session() || $user->get_admin_session() || $user->getsession()){
		header('Location: index.php');
		exit();
    }
?>	
<?php 
$pageTitle = "Forgot Password - Reset";
include "header.php";
?>
	<div class="st_reg fix">
		<h2 style="color:#ddd;background:#3498db">Reset Password</h2>
		<p class="msg">
				<?php
					if($_SERVER['REQUEST_METHOD'] == "POST"){
						$login_id = $_POST['login_id'];
						$user_type = $_POST['user_type'];
						
						if($user_type == 'faculty'){
							$user_arr = $user->get_faculty_by_username($login_id);
							$user_data = $user_arr->fetch_assoc();
						}else if($user_type == 'student'){
							$user_arr = $user->getuserbyid($login_id);
							$user_data = $user_arr->fetch_assoc();
						}
					}
				?>
			
			</p>
		<form action="forgot_reset_pass.php" method="post" id="st_form">
	
			<table>
				<tr>
					<th>Security Phrase: </th>
					<td><input type="text" name="sec_question" placeholder="Security Phrase" value="<?=$user_data['sec_question']?>" disabled required /></td>
				</tr>
				<tr>
				<tr>
					<th>Security Answer: </th>
					<td><input type="text" name="sec_answer" placeholder="Security Answer" required /></td>
				</tr>
				<input type="hidden" name="login_id" value="<?=$login_id?>">
				<input type="hidden" name="user_type" value="<?=$user_type?>">
				<tr>
				<?php if($user_data['sec_answer'] != 'None'){?>
					<th>New Password: </th>
					<td><input type="password" name="new_pass" placeholder="password" required /></td>
					</tr>
					<tr>
						<td colspan="2"><input style="color:#ddd;background:#3498db" type="submit" name="sub" value="Submit" /></td>
					</tr>
				<?php }else {?>
					<th colspan="2">Can't Reset! No Security Question</th>
					</tr>
			<?php	}?>
				
			</table>
		</form>

	</div>

<?php include "footer.php"; ?>