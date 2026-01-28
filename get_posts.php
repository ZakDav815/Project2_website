<?php

include 'includes/conndb.php';

$SQL = "SELECT * FROM post";

$result = $conn->query($SQL);

echo '<style>
img{
height:200px;
width:400px;
object-fit:cover;
display:block;
}
</style>';

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo '<section class="ooo">';
        echo "<h2>" . $row['title'] . "</h2>";
        echo "<p>" . $row['post_txt'] . "</p>";
        echo "</section>";
    }
} else {
    echo "0 results returned";
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Posts</title>
</head>
<body>
    <p>TEST</p>
</body>
</html>