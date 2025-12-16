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
    echo "New record created sucessfully<br>";
    echo "<a href='listposts.php'>Back to Posts</a>";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}