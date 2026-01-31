<?php
require_once("database.php");
$username = $_POST['username'];
$password = $_POST['password'];

$sql = "select id,name,mobile_no,weight,dob,gender,marrital_status,username, password from register_user where username = '$username' and password = '$password'";

$result = mysqli_query($con,$sql);
if ($row = mysqli_fetch_array($result)) {
	$response['success'] = 1;
	$response['id'] = $row['id'];
	$response['name'] = $row['name'];
	$response['mobile_no'] = $row['mobile_no'];
	$response['weight'] = $row['weight'];
	$response['dob'] = $row['dob'];
	$response['gender'] = $row['gender'];
	$response['marrital_status'] = $row['marrital_status'];
	$response['username'] = $row['username'];
}
else {
	$response[success] = 0;
}
echo json_encode($response);
?>