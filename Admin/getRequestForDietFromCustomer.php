<?php
require_once("database.php");
  mysqli_set_charset($con,"utf8");

$sql="SELECT request_for_diet.id,register_user.name, register_user.mobile_no, register_user.email_id, register_user.age,register_user.gender,register_user.diet,register_user.city, register_user.marrital_status,request_for_diet.diet_type,request_for_diet.status,request_for_diet.what_to_eat,request_for_diet.what_to_avoid,request_for_diet.nutrition_name FROM request_for_diet INNER JOIN register_user ON request_for_diet.customer_id=register_user.id";

$result=array();

$data=mysqli_query($con,$sql);

while($row=mysqli_fetch_array($data))
{
  array_push($result,array('id'=>$row[0],'customer_name' => $row[1],'customer_mobile_no' => $row[2],'customer_email_id'=>$row[3],'customer_age'=>$row[4],'customer_gender'=>$row[5],'customer_diet'=>$row[6],'customer_city'=>$row[7],'customer_marrital_status'=>$row[8],'customer_diet_type'=>$row[9],'status'=>$row[10],'what_to_eat'=>$row[11],'what_to_avoid'=>$row[12],'nutrition_name'=>$row[13]));
}
echo json_encode(array('getRequestForDietFromCustomer'=>$result));

mysqli_close($con);

?>
