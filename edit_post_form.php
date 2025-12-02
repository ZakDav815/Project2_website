<?php

include 'conndb.php';
$id = $_GET['id'];

$SQL = "SELECT title, description, post_txt FROM posts WHERE id =$id";

$result = $conn->query(query: $SQL);

$row = $result->fetch_assoc();

if($result->num_rows == 0){
    echo "No Post Found!";
}else{
    $title= $row['title'];
    $description = $row['description'];
    $post_txt = htmlentities(string: $row['post.txt']);
}

?>