<?php
$con = mysqli_connect("localhost", "root", "", "ahmed_elearning");

if($con){
    // echo "Database Connected";
} else {
    die("Connection Failed: " . mysqli_connect_error());
}

?>


