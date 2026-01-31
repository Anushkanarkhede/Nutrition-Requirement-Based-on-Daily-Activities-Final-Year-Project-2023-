<?php
require_once("database.php");
  mysqli_set_charset($con,"utf8");
  $customer_id = $_POST['customer_id'];
$sql="SELECT book_my_appointment.id,register_nutrition.image, register_nutrition.name, register_nutrition.mobile_no, register_nutrition.address,register_nutrition.specialist,register_nutrition.qualification,register_nutrition.city,book_my_appointment.problem, book_my_appointment.booking_date,book_my_appointment.booking_time FROM book_my_appointment INNER JOIN register_nutrition ON book_my_appointment.nutrition_id=register_nutrition.id where book_my_appointment.customer_id = '$customer_id'";

$result=array();

$data=mysqli_query($con,$sql);

while($row=mysqli_fetch_array($data))
{
	array_push($result,array('id'=>$row[0],'nutrition_image' => $row[1],'nutrition_name' => $row[2],'nutrition_mobile_no'=>$row[3],'nutrition_address'=>$row[4],'nutrition_specialist'=>$row[5],'nutrition_qualification'=>$row[6],'nutrition_city'=>$row[7],'customer_problem'=>$row[8],'customer_date'=>$row[9],'customer_time'=>$row[10]));
}
echo json_encode(array('getMyBooking'=>$result));

mysqli_close($con);


?>
