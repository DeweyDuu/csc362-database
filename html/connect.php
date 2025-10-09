<?php
    // Show all errors from the PHP interpreter.
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);

    // Show all errors from the MySQLi Extension.
    mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
    $dbhost = 'localhost';
    $dbuser = 'weicheng.du'; // Hard-coding credentials directly in code is not ideal: (1) we might have to 
    $dbpass = 'woaiDWC1314';
    $conn = new mysqli($dbhost, $dbuser, $dbpass);

    if ($conn->connect_errno) {
        echo "Error: Failed to make a MySQL connection, here is why: ". "<br>";
        echo "Errno: " . $conn->connect_errno . "\n";
        echo "Error: " . $conn->connect_error . "\n";
        exit; // Quit this PHP script if the connection fails.
    } else {
        echo "Connected Successfully!" . "<br>";
        echo "YAY!" . "<br>";
    }


?>
<!DOCTYPE html>
<html>
<head>
    <title>Databases Available</title>
</head>
<body>
    <h1>Databases Available</h1>

</body>
</html>


<?php
    $dblist = "SHOW databases";
    $result = $conn->query($dblist);
    while ($dbname = $result->fetch_array()) {
        echo $dbname['Database'] . "<br>";
    }
    $conn->close();
?>
<h2>Check back soon!</h2>


<h3>Details in a Database</h3>
<form action="details.php" method="get">
    <label for="dbname">Enter database name:</label>
    <input type="text" id="dbname" name="dbname" required>
    <input type="submit" value="Show Tables">
</form>