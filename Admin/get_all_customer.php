<?php
require_once("database.php");
$sql="SELECT id, name, mobile_no, email_id,age,gender,diet,country,state,city,marrital_status,username,password FROM register_user";

$result=array();

$data=mysqli_query($con,$sql);

while($row=mysqli_fetch_array($data))
{
	array_push($result,array('id'=>$row[0],'name' => $row[1],'mobile_no' => $row[2],'email_id' => $row[3],'age'=>$row[4],'gender' => $row[5],'diet' => $row[6],'country' => $row[7],'state' => $row[8],'city' => $row[9],'marrital_status' => $row[10],'username' => $row[11],'password' => $row[12]));
}
echo json_encode(array('getAllCustomer'=>$result));

mysqli_close($con);


?>
