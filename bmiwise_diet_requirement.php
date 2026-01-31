<?php
require_once("database.php");
$bmi_result = $_POST['bmi_result'];
$sql="SELECT id, bmi_result,calories, protein, fat,carbs FROM bmiwise_diet_requirement where bmi_result = '$bmi_result'";

$result=array();

$data=mysqli_query($con,$sql);

while($row=mysqli_fetch_array($data))
{
	array_push($result,array('id'=>$row[0],'bmi_result'=>$row[1],'calories' => $row[2],'protein' => $row[3],'fat' => $row[4],'carb'=>$row[5]));
}
echo json_encode(array('getbmiwisedietrequirement'=>$result));

mysqli_close($con);


?>
