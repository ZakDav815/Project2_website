<?php

session_start();

include 'includes/conndb.php';

if(isset($_POST["username"]) && !empty($_POST["username"])){
    $username = $_POST["username"];
}

if(isset($_POST["password_text"]) && !empty($_POST["password_text"])){
    $pass_text = $_POST["password_text"];
}

//get user id

$stmt = $conn->prepare("SELECT user_id FROM users WHERE username = ?");
$stmt->bind_param("s", $username);
$stmt->execute();

//statement->store_result();
$stmt->bind_result($user_id);

$stmt->fetch();

$stmt->close();

if(isset($user_id))
echo($user_id);

//check password in password table using password_verify()
