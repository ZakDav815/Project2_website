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
        form {
            background-color: azure;
            border: 10px solid transparent;
            padding: 15px;
            border-image: url(images/border.png) 30 round;
        }
        /* create box half*/
    </style>
</head>
<body>
    <form action="sign_up_validate" method="post">
        <p>Hello, this is not finished. <b>Test Sign Up Form.</b></p>
        <p>Name:
        <input type="text" name="name" id="name_field" placeholder="Name">
        </p>
        <p>Username:
        <input type="text" name="username" id="username_field" placeholder="Username">
        </p>
        <p>Password:
        <input type="password" name="password" placeholder="Password">
        </p>
        <p>Re-enter Password:
        <input type="password" name="password_check_field" placeholder="Re-enter Password">
        </p>
        <input type="submit">
    </form>
</body>
</html>