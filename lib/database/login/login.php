<?php
    include 'conn.php';

    $username = $_POST['username'];
    $password = $_POST['password'];

    $querryResult = $connect->("SELECT * FROM tabel_anggota WHERE username='".$username."' and password='".$password."'");

    $result=array();

    while($fetchData=$querryResult->fetch_assoc()) {
        $result[]=$fetchData;
    }

    echo json_encode($result);
?>