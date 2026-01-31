<?php
require_once("database.php");
  mysqli_set_charset($con,"utf8");

$userStepsCountStatus=$_POST['userStepsCountStatus'];
if ($userStepsCountStatus=="Active") {
$sql="SELECT id,userStepsCountStatus,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_steps where userStepsCountStatus='Active'";
}
elseif ($userStepsCountStatus=="Average") {
$sql="SELECT id,userStepsCountStatus,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_steps where userStepsCountStatus='Average'";
}
elseif ($userStepsCountStatus=="NonActive") {
$sql="SELECT id,userStepsCountStatus,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_steps where userStepsCountStatus='NonActive'";
}

$result=array();

$data=mysqli_query($con,$sql);

while($row=mysqli_fetch_array($data))
{
	array_push($result,array('id'=>$row[0],'userStepsCountStatus'=>$row[1],'what_to_eat'=>$row[2],'what_to_avoid'=>$row[3],'recommended_video'=>$row[4]));
}
echo json_encode(array('getMyDiet'=>$result));


mysqli_close($con);


?>