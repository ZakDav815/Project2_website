<?php

include 'includes/connDB.php';

$SQL = "SELECT * FROM post";

$result = $conn->query(query: $SQL);

echo '<style>
img{
height:200px;
width: 400px;
object-fit:cover;
display:block;
}
</style>';

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<h2>" . $row['title'] . "</h2>";
        echo "<p>" . $row['post_txt'] . "</p>";
    }
} else {
    echo "Sorry 0 Results Returned";
}

?>