<?php

$plain_text = "PlaceholderPassword";
echo $plain_text;

$hashed = password_hash(($plain_text, algo: PASSWORD_DEFAULT));


?>