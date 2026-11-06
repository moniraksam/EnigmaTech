<?php

require_once __DIR__ . '/../config/database.php';

$host = "DB_HOST";
$username = "DB_USER";
$password = "DB_PASS";
$database = "DB_NAME";

$conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$conn->set_charset("utf8mb4");
?>