<?php
require_once("database.php");
 $username = $_POST['username'];
$sql="SELECT id, name, mobile_no, email_id,weight,dob,gender,marrital_status,username,password FROM register_user where username = '$username'";

$result=array();

$data=mysqli_query($con,$sql);

while($row=mysqli_fetch_array($data))
{
	array_push($result,array('id'=>$row[0],'name' => $row[1],'mobile_no' => $row[2],'email_id' => $row[3],'weight'=>$row[4],'dob' => $row[5],'gender' => $row[6],'marrital_status' => $row[7],'username' => $row[8],'password' => $row[9]));
}
echo json_encode(array('getMyProfile'=>$result));

mysqli_close($con);


?>
