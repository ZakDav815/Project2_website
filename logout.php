<?php
session_start();
if(isset($_SESSION['validated']) && $_SESSION['validated'] === true){
    $_SESSION['validated'] = false;
    echo '<h1>You Are Now Logged Out!</h1>';
}else{
    echo '<h1>You Are Already Logged Out!</h1>';
    //header('testHash.php');
}
?>