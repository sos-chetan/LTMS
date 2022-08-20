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
$pageTitle = "Admin";
include "php/headertop_admin.php";
?>
<div class="admin_profile">
	
	<div class="section">
			<h3>Student</h3>
			<ul>
				<li><a href="admin_all_student.php">View All Student</a></li>
				<li><a href="st_result.php">Student Result</a></li>
				<li><a href="att_view.php">Manage Attendance</a></li>
				<li><a href="st_reg_adm.php">Add Student</a></li>
			</ul>
	</div>
	<div class="section">
			<h3>Faculty</h3>
			<ul>
				<li><a href="admin_all_faculty.php">Faculty Details</a></li>
				<li><a href="fct_reg_adm.php">Add Faculty</a></li>
			</ul>
	</div>
	 <div class="section">
	
			<h3>Course</h3>
			<ul>
				<li><a href="subjects_add.php">Add Subject</a></li>
				<li><a href="courses_add.php">Add Course</a></li>
				<li><a href="subjects_manage.php">Manage Subjects</a></li>
				<li><a href="courses_manage.php">Manage Courses</a></li>

			</ul>

	</div> 

</div>

<?php include "php/footerbottom.php";?>