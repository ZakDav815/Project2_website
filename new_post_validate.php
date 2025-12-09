<?php

include 'includes/conndb.php';

$title = $_POST['title'];
$description = $_POST['description'];
$post_text = $_POST['post_txt'];

$sanitisedTitle = htmlentities(string: $title);
$sanitisedDescription = htmlentities(string: $description);
$sanitisedPost = htmlentities(string: $post_text);

$sql = "INSERT INTO post (title, description, post_txt) VALUES ('$sanitisedTitle', '$sanitisedDescription', '$sanitisedPost')";

if ($conn->query(query: $sql) === TRUE) {
    echo "New record created sucessfully";
    echo "<a href='listposts.php'>Back to Posts</a>";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error; 
}