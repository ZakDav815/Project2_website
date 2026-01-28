<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <nav>
        <p>
            Navigate here, in the Navigation element???
        </p>
    </nav>
    <style>
        .newposttext {
            background-color: azure;
        }
        .newpostlink {
            color: red;
        }
        nav {
            
        }
    </style>
    <section class="newposttext">
        <p><b>Have something to say? click <a href="http://localhost/Project2_website/new_post_form.php" class="newpostlink">here</a> to make a new post!</b></p>
    </section>
    <?php

    include 'includes/conndb.php';
    session_start();
    $_SESSION['user_id'] = 1;
    $_SESSION['username'] = 'admin';
    $_SESSION['logged_in'] = true;
    $_SESSION['role'] = 'admin';

    $logged_in = $_SESSION['logged_in'];
    $role = $_SESSION['role'];

    $SQL = "SELECT id, title, author FROM post";

    $result = $conn->query(query:$SQL);

    echo '<style>
    section{
    background-color:lightlue;
    display:block;
    }
    </style>';

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo '<section class="***">';
        echo '<p><a href="retrieve_post.php?id=' . $row['id'] . '">' . $row['title'] . '</a>:<br>'; // replaced blogpost_retrieve_test.php with retrieve_post.php
        if($role == 'admin'){
            echo '<a href="edit_post_form.php?id=' . $row['id'] . '">Edit</a> | <a href="delete_post.php?id=' . $row['id'] . '">Delete</a>';
        }
        echo $row['author'] . "</>";
        echo "</section>";
    }
} else {
    echo "Sorry 0 results returned";
}

?>

</body>
</html>