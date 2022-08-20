<?php
    ob_start ();
    session_start();
    require "php/config.php";
    require_once "php/functions.php";
    $user = new login_registration_class();
    if($user->get_admin_session()){
        header('Location: admin.php');
        exit();
    }else if($user->get_faculty_session()){
        header('Location: class_att_fc.php');
    }else if($user->getsession()){
        header('Location: st_profile.php');
    }
?>