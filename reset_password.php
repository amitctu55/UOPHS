<?php
$host = 'localhost';
$username = 'root';
$password = '';
$database = 'upchar_live';

$conn = new mysqli($host, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully\n";

// New password
$newpass = 'admin123';
$md5pass = md5($newpass);
echo "New password MD5: $md5pass\n";

// Update password for username='Damd'
$sql = "UPDATE login SET password = ? WHERE username = 'Damd'";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $md5pass);
if ($stmt->execute()) {
    echo "Password updated for Damd\n";
} else {
    echo "Error: " . $stmt->error . "\n";
}
$stmt->close();
$conn->close();
?>