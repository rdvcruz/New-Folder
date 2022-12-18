<?php
$db = mysqli_connect('localhost','root', '','login');
if (!$db) {
	echo "Database connection failed";
}

$voterskey = $_POST['voterskey'];

$sql = "SELECT * FROM users WHERE voterskey = '".$voterskey."' ";
$result = mysqli_query($db, $sql);
$count = mysqli_num_rows($result);

if($count >= 1) {
	echo json_encode("success");
}
else {
	echo json_encode("error");
}


?>