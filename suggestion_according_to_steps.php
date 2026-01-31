<?php
require_once("database.php");

$userStepsCountStatus=$_POST['userStepsCountStatus'];
if ($userStepsCountStatus=="Active") {
$sql="SELECT id, steps,Monday, Tuesday, Wednesday,Thursday,Friday,Saturday,Sunday FROM weekly_diet_according_5000steps where steps='Active'";
}
elseif ($userStepsCountStatus=="Average") {
$sql="SELECT id, steps,Monday, Tuesday, Wednesday,Thursday,Friday,Saturday,Sunday FROM weekly_diet_according_5000steps  where steps='Average'";
}
elseif ($userStepsCountStatus=="NonActive") {
$sql="SELECT id, steps,Monday, Tuesday, Wednesday,Thursday,Friday,Saturday,Sunday FROM weekly_diet_according_5000steps  where steps='NonActive'";
}

$result=array();

$data=mysqli_query($con,$sql);

while($row=mysqli_fetch_array($data))
{
	array_push($result,array('id'=>$row[0],'steps'=>$row[1],'Monday' => $row[2],'Tuesday' => $row[3],'Wednesday' => $row[4],'Thursday'=>$row[5],'Friday'=>$row[5],'Saturday'=>$row[5],'Sunday'=>$row[5]));
}
echo json_encode(array('suggestion_according_to_steps'=>$result));

mysqli_close($con);


?>
