<?php
    session_start();
	require "php/config.php";
	require_once "php/functions.php";
	$user = new login_registration_class();
    $sub_id = $_GET['sub_id'];

    if($user->get_admin_session()){
        if($user->delete_subject($sub_id)){
            header('Location: subjects_manage.php');
        }else{
            echo "<script>alert('Something went wrong!')</script>";
            header('Location: subjects_manage.php');
            
        }

	}else if($user->get_faculty_session()){
        $user->delete_subject($sub_id);
        header('Location: subjects_manage_fct.php');
    }else{
        header('Location: index.php');
		exit();
    }
?>	