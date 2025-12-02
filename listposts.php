<?php

include 'includes/conndb.php';

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
        echo $row['author'] . "</>";
        echo "</section>";
    }
} else {
    echo "Sorry 0 results returned";
}