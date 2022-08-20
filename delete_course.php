<?php
    session_start();
	require "php/config.php";
	require_once "php/functions.php";
	$user = new login_registration_class();
    $cs_id = $_GET['cs_id'];

    if($user->get_admin_session()){
        if($user->delete_course($cs_id)){
            header('Location: courses_manage.php');
        }else{
            echo "<script>alert('Something went wrong!')</script>";
            header('Location: courses_manage.php');
        }
	}else{
        header('Location: index.php');
		exit();
    }
?>	