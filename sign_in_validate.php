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

$statement = $conn->prepare("SELECT user_id FROM users WHERE username = ?");
$statement->bind_param("s", $username);
$statement->execute();

//statement->store_result();
$statement->bind_result($user_id);

$statement->fetch();

$statement->close();

if(isset($user_id))
{
    echo($user_id);
}
//check password in password table using password_verify()