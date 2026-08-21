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

$sql = "SELECT * FROM login";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "id: " . $row["id"]. " - Username: " . $row["username"]. " - Password: " . $row["password"]. " - Role: " . $row["role"]. " - Status: " . $row["status"]."\n";
    }
} else {
    echo "0 results in login table\n";
}
$conn->close();
?>