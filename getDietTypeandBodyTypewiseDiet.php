<?php
require_once("database.php");
  mysqli_set_charset($con,"utf8");

$userRequestDietType=$_POST['userRequestDietType'];

if ($userRequestDietType=="SugarMaleLess606") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='SugarMaleLess606'";
}
if ($userRequestDietType=="SugarFemaleLess606") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='SugarFemaleLess606'";
}

if ($userRequestDietType=="SugarMaleGreat605") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='SugarMaleGreat605'";
}
if ($userRequestDietType=="SugarFemaleGreat605") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='SugarFemaleGreat605'";
}

if ($userRequestDietType=="BPMaleLess606") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='BPMaleLess606'";
}
if ($userRequestDietType=="BPFemaleLess606") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='BPFemaleLess606'";
}

if ($userRequestDietType=="BPMaleGreat605") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='BPMaleGreat605'";
}
if ($userRequestDietType=="BPFemaleGreat605") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='BPFemaleGreat605'";
}

if ($userRequestDietType=="SugarandBPMaleLess606") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='SugarandBPMaleLess606'";
}
if ($userRequestDietType=="SugarandBPFemaleLess606") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='SugarandBPFemaleLess606'";
}

if ($userRequestDietType=="SugarandBPMaleGreat605") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='SugarandBPMaleGreat605'";
}
if ($userRequestDietType=="SugarandBPFemaleGreat605") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='SugarandBPFemaleGreat605'";
}

if ($userRequestDietType=="WeightGainMaleLess606") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='WeightGainMaleLess606'";
}
if ($userRequestDietType=="WeightGainFemaleLess606") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='WeightGainFemaleLess606'";
}

if ($userRequestDietType=="WeightGainMaleGreat605") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='WeightGainMaleGreat605'";
}
if ($userRequestDietType=="WeightGainFemaleGreat605") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='WeightGainFemaleGreat605'";
}

if ($userRequestDietType=="WeightLossMaleLess606") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='WeightLossMaleLess606'";
}
if ($userRequestDietType=="WeightLossFemaleLess606") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='WeightLossFemaleLess606'";
}

if ($userRequestDietType=="WeightLossMaleGreat605") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='WeightLossMaleGreat605'";
}
if ($userRequestDietType=="WeightLossFemaleGreat605") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='WeightLossFemaleGreat605'";
}

if ($userRequestDietType=="OlderPeopleMaleLess606") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='OlderPeopleMaleLess606'";
}
if ($userRequestDietType=="OlderPeopleFemaleLess606") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='OlderPeopleFemaleLess606'";
}

if ($userRequestDietType=="OlderPeopleMaleGreat605") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='OlderPeopleMaleGreat605'";
}
if ($userRequestDietType=="OlderPeopleFemaleGreat605") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='OlderPeopleFemaleGreat605'";
}

if ($userRequestDietType=="PregnancyFemaleLess606") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='PregnancyFemaleLess606'";
}
if ($userRequestDietType=="PregnancyFemaleGreat605") {
$sql="SELECT id,diettype,what_to_eat,what_to_avoid,recommended_video FROM request_for_diet_according_to_diet_type_and_bodytype where diettype='PregnancyFemaleGreat605'";
}


$result=array();

$data=mysqli_query($con,$sql);

while($row=mysqli_fetch_array($data))
{
	array_push($result,array('id'=>$row[0],'diettype'=>$row[1],'what_to_eat'=>$row[2],'what_to_avoid'=>$row[3],'recommended_video'=>$row[4]));
}
echo json_encode(array('GetDietTypeandBodyTypewiseDiet'=>$result));


mysqli_close($con);


?>