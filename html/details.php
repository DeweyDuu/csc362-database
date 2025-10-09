<?php
// Show all errors from the PHP interpreter.
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Get the database
$database_name = $_GET['dbname'];

// connect
$dbhost = 'localhost';
$dbuser = 'weicheng.du';
$dbpass = 'woaiDWC1314';

$conn = new mysqli($dbhost, $dbuser, $dbpass, $database_name);

// Check connection
if ($conn->connect_errno) {
    echo "Failed to connect to database.<br>";
    echo "Error number: " . $conn->connect_errno . "<br>";
    echo "Error message: " . $conn->connect_error . "<br>";
    exit;// Quit this PHP script if the connection fails.
}else {
        echo "Connected Successfully!" . "<br>";
        echo "YAY!" . "<br>";
    }

?>


<!DOCTYPE html>
<html>
<head>
    <title>Tables in <?php echo htmlspecialchars($database_name); ?></title>
</head>
<body>
    <h1>Tables in Database: <?php echo htmlspecialchars($database_name); ?></h1>

    <?php

    //show tables in this database
    
    $result = $conn->query("show tables");
    
    //display tables
    echo "<ul>";
    while ($row = $result->fetch_array(MYSQLI_NUM)) {
        echo "<li>" . htmlspecialchars($row[0]) . "</li>";
    }
    echo "</ul>";


    $conn->close();
    ?>

    <p><a href="connect.php">Back to Databases List</a></p>
</body>
</html>
