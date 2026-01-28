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

if(isset($user_id) && !empty($user_id)) // changed from if(isset($user_id) && !empty($user_id))
{
    // echo($user_id);
    //check password in password table using password_verify()

    $statement = $conn->prepare("SELECT password_hash FROM passwords WHERE user_id = ?"); //not sure of password_hash/passwords/user_id works as phpMyAdmin not working(25/01/26 20:34)
    $statement->bind_param("s", $username);
    $statement->execute();

    //statement->store_result();
    $statement->bind_result($pword_hash); // not sure if work(25/01/26 20:36)

    $statement->fetch();

    $statement->close();
}else{
    // handle if user id not returned
}

if(isset($pword_hash) && !empty($pword_hash)){ //changed instances of password to "pword". issues maybe but won't be able to check
    $hashed_input = password_hash($pass_text);
    $success = password_verify($pass_text, $pword_hash);
}

// if($success){                            deleted these 3 lines and fixed an error I had.
    // where handle set logged_in to true
// }