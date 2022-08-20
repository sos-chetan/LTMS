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
	if($_SERVER['REQUEST_METHOD'] == "POST"){
			$login_id = $_POST['login_id'];
			$user_type = $_POST['user_type'];
			
			$sec_answer = $_POST['sec_answer'];
			$new_pass = md5($_POST['new_pass']);
			
			if($user_type == 'faculty'){
				$user_arr = $user->get_faculty_by_username($login_id);
				$user_data = $user_arr->fetch_assoc();
				if($sec_answer == $user_data['sec_answer']){
					$fct_pass = $user->fct_changepass($login_id, $new_pass, $user_type);
					$_SESSION['res_msg'] = 'Password Reset Successfully! Please login.';
					
				}else{
					$_SESSION['res_msg'] = 'Security Answer Wrong.';
				}
				header('Location: forgot_password_email.php');
			}else if($user_type == 'student'){
				$user_arr = $user->getuserbyid($login_id);
				$user_data = $user_arr->fetch_assoc();
				if($sec_answer == $user_data['sec_answer']){
					$fct_pass = $user->fct_changepass($login_id, $new_pass, $user_type);
					$_SESSION['res_msg'] = 'Password Reset Successfully! Please login.';
				}else{
					$_SESSION['res_msg'] = 'Security Answer Wrong.';
				}
				header('Location: forgot_password_email.php');
				}
			}?>