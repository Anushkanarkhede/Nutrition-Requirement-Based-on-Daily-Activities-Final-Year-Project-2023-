<?php
require_once("database.php");

$name = $_POST['name'];
$mobile_no = $_POST['mobile_no'];
$email_id = $_POST['email_id'];
$weight = $_POST['weight'];
$dob = $_POST['dob'];
$gender = $_POST['gender'];
$marrital_status = $_POST['marrital_status'];
$username = $_POST['username'];
$password = $_POST['password'];

$sql = "insert into register_user(name,mobile_no,email_id,weight,dob,gender,marrital_status,username,password) values('$name','$mobile_no','$email_id','$weight','$dob','$gender','$marrital_status','$username','$password')";

$result = mysqli_query($con,$sql);

if ($result > 0) {
	$response['success'] = 1; 
$response['lastinsertedid']=mysqli_insert_id($con);
}
else
{
$response['sucess'] = 0;
}

echo json_encode($response);

?>