<?php
require_once("database.php");

$userStepsCountStatus = $_POST['userStepsCountStatus'];
$what_to_eat = $_POST['what_to_eat'];
$what_to_avoid = $_POST['what_to_avoid'];
$recommended_video = $_POST['recommended_video'];



$sql = "insert into request_for_diet_according_to_steps(userStepsCountStatus,what_to_eat,what_to_avoid,recommended_video) values('$userStepsCountStatus','$what_to_eat','$what_to_avoid','$recommended_video')";

$result = mysqli_query($con,$sql);

if ($result > 0) {
	$response['success'] = 1; 
	// code...
}
else
{
$response['sucess'] = 0;
}

echo json_encode($response);

?>