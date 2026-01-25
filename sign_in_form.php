<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign in</title>
</head>
<body>
    <p1><b>You have been Signed Out.</b></p1>
    <p>Sign in to enter.</p>
    <form action="sign_in_validate.php" method="post">
        <input type="text" name="username"
        placeholder="Enter Username">
        
        <input type="password" name="password_text" placeholder="Password">
        <input type="password" name="password_check_field" placeholder="Re-enter Password">
        <input type="submit">
        <style>
            form {
            background-color: azure;
            border: 10px solid transparent;
            padding: 35px;
            border-image: url(images/border.png) 30 round;
            }
            body {
            background-image: url(images/grey-white-gradient.jpg);
            }
            form {
                margin: 20px;
            }
        </style>
    </form>
</body>
</html>