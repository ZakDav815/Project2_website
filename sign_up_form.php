<?php
    session_start();
    if (isset($_SESSION["errors"])){
    $errors = $_SESSION["errors"];
    foreach ($errors as $error) {
        echo $error;
    }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign up form</title>
    <style>
        /* create box half*/

    </style>
</head>
<body>
    <form action="action"
</body>
</html>