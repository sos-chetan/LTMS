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
		<div>
			<?php
				if(isset($_SESSION['res_msg'])){
					?>
				<p style="text-align:center; color: blue; font-weight: bold;"><?=$_SESSION['res_msg']?></p>
					<?php
					unset($_SESSION['res_msg']);
				}
			?>
		</div>	
		<form action="forgot_password.php" method="post" id="st_form">
	
			<table>
				<tr>
					<th>Enter Login Id: </th>
					<td><input type="text" name="login_id" placeholder="Login Id" required /></td>
				</tr>
				<tr>
					<th>Select User Type: </th>
					<td>
						<select name="user_type">
							<option value="faculty">Faculty</option>
							<option value="student">Student</option>
						</select>
				</td>
				</tr>
				
				<tr>
					<td colspan="2"><input style="color:#ddd;background:#3498db" type="submit" name="sub" value="Reset Password" /></td>
				</tr>
			</table>
		</form>

	</div>

<?php include "footer.php"; ?>