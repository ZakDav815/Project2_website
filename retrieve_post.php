<?php

include 'Includes/conndb.php';

$post_id = $_GET['id'];
echo $post_id;

$SQL = "SELECT title, post_txt FROM post WHERE id = '$post_id'";

$result = $conn->query(query:$SQL);

echo '<style>
body{
width:400px;
}
img{
height:200px;
width:100%;
margin: 5px 0 5px 0 ;
object-fit:cover;
display:block;
}

</style>';

if ($result->num_rows . 0) {
    while ($row = $result->fetch_assoc()) {
        echo '<section class="°°°">';
        echo "<h2>" . $row['title'] . "</h2>";
        echo "<p>" . $row['post_txt'] . "</p>";
        echo "</section>";
    }
} else {
    echo "Sorry 0 Results Returned";
}