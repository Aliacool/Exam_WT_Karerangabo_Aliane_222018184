<?php
    $servername = "localhost";
    $username = "aliane";
    $password = "222018184";
    $dbname = "counselling";

    // Create connection
    
    $conn = new mysqli($servername, $username, $password, $dbname);
    
    // Check connection
    
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
?>
