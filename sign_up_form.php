<?php
    // starting session must be first thing done if using one
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
        body {
            background-image: url(images/grey-white-gradient.jpg);
        }
        form {
            background-color: azure;
            border: 10px solid transparent;
            padding: 35px;
            border-image: url(images/border.png) 30 round;
        }
        /*Setting width of inputs text inputs only*/
        form input[type="text"]{
            width: 20%;
        }
    </style>
</head>
<body>
    <form action="sign_up_validate.php" method="post">
        <p>To make, respond and like posts, you will need to sign up. After, you will be able to to make and interact with posts. <b>This is not finished. Design & whatnot may change over time.</b></p>
        <p>Name:<br>
        <input type="text" name="name" id="name_field" placeholder="Name">Your name.
        </p>
        <p>Username:<br>
        <input type="text" name="username" id="username_field" placeholder="Username">Your Username. <b>Don't put in your real name.</b>
        </p>
        <p>Password:<br>
        <input type="password" name="password" placeholder="Password">Your password. <b>Don't give this to others.</b>
        </p>
        <p>Re-enter Password:<br>
        <input type="password" name="password_check_field" placeholder="Re-enter Password">Re-enter your password. Make sure to spell the password correctly.
        </p>
        <!-- Submit button -->
        <input type="submit">
    </form>
</body>
</html>