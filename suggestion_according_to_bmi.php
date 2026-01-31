<?php
require_once("database.php");
$bmi_result = $_POST['bmi_result'];
$sql="SELECT id, bmi_result,6_to_7AM, 8_to_9AM, 11_to_12AM,1_to_2PM,6_to_7PM,8_to_9PM,10PM	 FROM suggestion_according_to_bmi where bmi_result = '$bmi_result'";

$result=array();

$data=mysqli_query($con,$sql);

while($row=mysqli_fetch_array($data))
{
	array_push($result,array('id'=>$row[0],'bmi_result'=>$row[1],'6_to_7AM' => $row[2],'8_to_9AM' => $row[3],'11_to_12AM' => $row[4],'1_to_2PM'=>$row[5],'6_to_7PM'=>$row[5],'8_to_9PM'=>$row[5],'10PM'=>$row[5]));
}
echo json_encode(array('suggestion_according_to_bmi'=>$result));

mysqli_close($con);


?>
