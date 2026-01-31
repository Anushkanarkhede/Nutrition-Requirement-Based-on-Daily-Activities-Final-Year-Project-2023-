<?php
require_once("database.php");

$customer_id = $_POST['customer_id'];
$diet_type = $_POST['diet_type'];
$nutrition_name = $_POST['nutrition_name'];


$sql = "insert into request_for_diet(customer_id,diet_type,nutrition_name,status) values('$customer_id','$diet_type','$nutrition_name','pending')";

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