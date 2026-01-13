<?php
session_start();

if(isset($_SESSION['validated']) && $_SESSION['validated'] === true){
    echo '<h1>Logged In!</h1>';
}else{
     echo '<h1>Not Authorised!</h1>';
    header('passwordHash.php');
    //header('testHash.php');
}
?>