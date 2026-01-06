<?php

$plain_text = "PlaceholderPassword";
echo $plain_text;

// you will need to hash password strings sent in a form, as plain text, we use the input type password, to help with this.

$hashed = password_hash(($plain_text, algo: PASSWORD_DEFAULT));

//get using POST the value being sent

//hash it and then send the hash to the DB

?>