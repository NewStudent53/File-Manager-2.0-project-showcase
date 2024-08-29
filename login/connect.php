<?php

$host = getenv('RENDER_MYSQL_HOST') ?: 'localhost';
$user = getenv('MYSQL_USER') ?: 'root';
$pass = getenv('MYSQL_PASSWORD') ?: '1d0ntw4nn4kn0w';
$db = getenv('MYSQL_DATABASE') ?: 'login';

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    echo "Failed to connect DB: " . $conn->connect_error;
} else {
    echo "Connected successfully";
}

?>
