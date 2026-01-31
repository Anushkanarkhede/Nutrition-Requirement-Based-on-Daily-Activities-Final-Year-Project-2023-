<?php
require_once("database.php");

$id = $_POST['id'];
$diettype = $_POST['diettype'];
$what_to_eat = $_POST['what_to_eat'];
$what_to_avoid = $_POST['what_to_avoid'];
$recommended_video = $_POST['recommended_video'];


$sql = "update request_for_diet_according_to_diet_type_and_bodytype set diettype = '$diettype' what_to_eat = '$what_to_eat', what_to_avoid='$what_to_avoid',recommended_video='$recommended_video' where id = '$id'";

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