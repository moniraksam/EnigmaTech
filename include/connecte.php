<?php
$host = "localhost";
$username = "enigmatech_user";
$password = "user";
$database = "enigmatech";

$conn = new mysqli($host, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$conn->set_charset("utf8mb4");
?>