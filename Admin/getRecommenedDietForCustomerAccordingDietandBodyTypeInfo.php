<?php
require_once("database.php");

$sql="SELECT id, diettype,what_to_eat, what_to_avoid, recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype";

$result=array();

$data=mysqli_query($con,$sql);

while($row=mysqli_fetch_array($data))
{
	array_push($result,array('id'=>$row[0],'diettype'=>$row[1],'what_to_eat' => $row[2],'what_to_avoid' => $row[3],'recommended_video' => $row[4]));
}
echo json_encode(array('getRecommenedDietForCustomerAccordingDietandBodyTypeInfo'=>$result));

mysqli_close($con);


?>
