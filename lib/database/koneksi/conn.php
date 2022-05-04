<?php

$connect = new mysqli("localhost", "root", "", "absen");

if($connect) {

} else {
    echo "Connection Failed";
    exit();
}

?>