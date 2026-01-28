<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "blogsite";

$conn = new mysqli(
    hostname: $servername,
    username: $username,
    password: $password,
    database: $dbname);

    if($conn->connect_error) {
        die("connection failed: " . $conn->connect_error);
    }
    // echo "<h1><b>worked successfully!</b></h1>"; commented so this is not visible
    ?>