<?php
require_once("database.php");

$sql="SELECT distinct id,specialist FROM register_nutrition";

$result=array();

$data=mysqli_query($con,$sql);

while($row=mysqli_fetch_array($data))
{
	array_push($result,array('id'=>$row[0],'specialist'=>$row[1]));
}
echo json_encode(array('getDietType'=>$result));

mysqli_close($con);


?>
