<?php
session_start();

$_SESSION['validated'] = false;

$plain_text = "passwordABC123";

$password_hash = '$2y$10$Kh2EpJv7HGQHH/vLHiSbEuP7Bkzes1Khy1DMMT3.Q9imiv83GIDtq';

$plain_text = $_POST['password']; // Undefined Array Key

echo $plain_text;

// you will need to hash password strings sent in a form, as plain text, we use the input type password, to help with this.

//get using POST the value being sent

//hash it and then send the hash to the DB

//so we will practise hashing a value first

$hashed = password_hash(password: ($plain_text), algo: PASSWORD_DEFAULT);
// So the value above is what you wouldstore in your passwords table of the database

echo "<br>";
echo ($hashed);
//$hashed .="a";

//this part of the script would be in an authorise.php or similarly named file
if (password_verify(password: $plain_text, hash: $hashed) === TRUE) {
    echo "The Plaintext matched the Hashed Value";
    $_SESSION['validated'] = TRUE;
}else{
    echo "Error with your Username or Password";
}
?>