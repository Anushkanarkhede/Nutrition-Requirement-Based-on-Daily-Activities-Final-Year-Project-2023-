<?php
require_once("database.php");
$diet_type = $_POST['diet_type'];
$sql="SELECT id, image,name, mobile_no, email_id,address,country,state,city,specialist,qualification,achievement FROM register_nutrition where specialist = '$diet_type'";

$result=array();

$data=mysqli_query($con,$sql);

while($row=mysqli_fetch_array($data))
{
	array_push($result,array('id'=>$row[0],'image'=>$row[1],'name' => $row[2],'mobile_no' => $row[3],'email_id' => $row[4],'address'=>$row[5],'country' => $row[6],'state' => $row[7],'city' => $row[8],'specialist' => $row[9],'qualification' => $row[10],'achievement' => $row[11]));
}
echo json_encode(array('getDietTypewiseNutritionDetailsList'=>$result));

mysqli_close($con);


?>
