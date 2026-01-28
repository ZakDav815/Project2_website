<?php

include 'Includes/conndb.php';

$id = $_POST['id'];
$title = $_POST['title'];
$description = $_POST['description'];
$post_text = $_POST['post_txt'];

$sanitisedTitle = htmlentities(string: $title);
$sanitisedDescription = htmlentities(string: $description);
$sanitisedPost = htmlentities(string: $post_text);

$sql = "UPDATE post SET title='$sanitisedTitle', description='$sanitisedDescription',  post_txt='$sanitisedPost' WHERE id = $id";

if ($conn->query(query: $sql) === TRUE) {
    echo ""; // 28/01/26 - "New record created sucessfully<br>" deleted so you can't see it.
    echo "<a href='listposts.php' class='linkpostback'>Back to Posts</a>";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
} //  <class="listpostlink"
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Successful</title>
</head>
<body>
    <img src="https://tse1.mm.bing.net/th/id/OIP.ABrXwvt49mGLKU-JxBczPgHaHa?rs=1&pid=ImgDetMain&o=7&rm=3" alt="Image test">
    <p>You sucessfully edited your post. Click "Back to Posts" to go back and view your changes.</p> <!--CSS body - background-image: url(images/grey-white-gradient.jpg); -->
    <style>
        .linkpostback {
            font-size: 20px;
            font-style: italic;
        }
        body {
            background-image: url(images/grey-white-gradient.jpg); 
        }
        p {
            font-size: 20px;
            color:lightgray;
        }
        img {
            width: 40px;
            opacity: 0.4;
        }
    </style>
</body>
</html>