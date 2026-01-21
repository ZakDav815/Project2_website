<?php
// start session
session_start();
//connection
include 'includes/conndb.php';
//initialise errors
$errors = array();

//
$name = $_POST["name"];
$uname = $_POST["username"];
$pword_txt = $_POST["password"];
$pword_check_txt = $_POST["password_check"];

echo "" . $name . "" . $username . "" . $password_txt . "" . $pword_check_txt;

//echo("".$name."".$uname."".$pword."".$pword_check_txt);

//validate lengths

// check password against second value

if($pword_txt != $pword_check_txt) {                      // echo something around here below
    $errors["login"] = "Username or Password Incorrect";
    $_SESSION["errors"] = $errors;
    header("Location:sign_up_form.php");
    exit();
}
//hash password
$hashed = password_hash(($pword_txt), PASSWORD_DEFAULT);
//send to db

//______________________________________________________________________________

//prepare data
$statement = $conn->prepare("INSERT INTO users (name, uname) VALUES (?,?)");
$statement->bind_param("ss",$name,$uname);
if($statement->execute()){ //deleted the ; here, hope no issues
    $user_id = $conn->insert_id;
    echo "User Added to DB Successfully. $user_id";
    //header("");
}else{
echo "Error Occured With INSERT user";
$errors["db"] = "Database Error - Sign-Up Failed";
$_SESSION["errors"] = $errors;
header("Location:sign_up_form.php");
exit();
};
//______________________________________________________________________________
$statement->close();

//prepare next statement
$statement = $conn->prepare("INSERT INTO passwords (user_id, password_hash) VALUES (?,?)");

if($statement->execute()){
    echo "Password Hash Added to DB Successfully.";
    unset($_SESSION["errors"]);
    //header("");
    //exit();
}else{
    echo "Error Occurred With Insert";
    //header("";)
}