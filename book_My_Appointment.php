<?php
require_once("database.php");

$customer_id = $_POST['id'];
$nutrition_id = $_POST['nutrition_id'];
$problem = $_POST['problem'];
$booking_date = $_POST['booking_date'];
$booking_time = $_POST['booking_time'];

$sql = "insert into book_my_appointment(customer_id,nutrition_id,problem,booking_date,booking_time) values('$customer_id','$nutrition_id','$problem','$booking_date','$booking_time')";

$result = mysqli_query($con,$sql);

if ($result > 0) {
	$response['success'] = 1; 

}
else
{
$response['sucess'] = 0;
}

echo json_encode($response);

?>