<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);


// create seesion with 30 minutes timeout

session_start();
if (isset($_SESSION['LAST_ACTIVITY']) && (time() - $_SESSION['LAST_ACTIVITY'] > 1800)) {
    session_unset();     
    session_destroy();   
}
$_SESSION['LAST_ACTIVITY'] = time();


// user login

if ( isset($_POST["username"])) {
    $_SESSION["username"] = $_POST["username"];
    $_SESSION["add"] = 0;
    $_SESSION["delete"] = 0;
}


// user logout

if (isset($_POST["logout"])) {
    session_unset();
    session_destroy();
    header("Location: new_manage_instruments.php");
    exit();
}


// dark light mode 
if (isset($_POST["toggle_mode"])) {
    if (isset($_COOKIE["mode"]) && $_COOKIE["mode"] === "dark") {
        setcookie("mode", "light", time() + (10 * 365 * 24 * 60 * 60));
    } else {
        setcookie("mode", "dark", time() + (10 * 365 * 24 * 60 * 60));
    }
    header("Location: new_manage_instruments.php");
    exit();
}

$css= (isset($_COOKIE["mode"]) && $_COOKIE["mode"] == "dark") ? "darkmode.css" : "basic.css";

?>


<!DOCTYPE html>
<html>
<head>
    <title>Manage Instruments</title>
    <link rel="stylesheet" href="<?php echo $css; ?>">
</head>
<body>

<?php
// If user is NOT logged in
if (!isset($_SESSION["username"])) {
    ?>
    <h2>Welcome to the instrument rental page</h2>
    <form method="post">
        <label>enter your user name to start a session:</label>
        <input type="text" name="username" required>
        <button type="submit">Login</button>
    </form>

    <p>login to access memorized activity</p>
    <?php
} else {
    // if user is logged in
    ?>
    <h2>Welcome my guest <?php echo htmlspecialchars($_SESSION["username"]); ?>!</h2>

    <form method="post">
        <button name="logout" type="submit">Logout</button>
    </form>

    <h3>User Interactions</h3>
    <p>You have added <?php echo $_SESSION["add"]; ?> records</p>
    <p>you have deleted <?php echo $_SESSION["delete"]; ?> records</p>
    <?php
}
?>

<form method="post">
    <button name="toggle_mode" type="submit">
        Switch to <?php echo (isset($_COOKIE["mode"]) && $_COOKIE["mode"] === "dark") ? "Light" : "Dark"; ?> Mode
    </button>
</form>



<?php

function result_to_html_table($result)
{
    $rows = $result->fetch_all();
    $row_count = $result->num_rows;
    $col_count = $result->field_count;
    $cols = $result->fetch_fields();
    ?>

    <form method="POST">
        <table>
            <thead>
                <tr>
                    <td><b>Select</b></td>
                    <?php for ($i = 0; $i < $col_count; $i++) { ?>
                        <td><b><?php echo htmlspecialchars($cols[$i]->name); ?></b></td>
                    <?php } ?>
                </tr>
            </thead>

            <tbody>
                <?php for ($i = 0; $i < $row_count; $i++) { 
                    $inst_id = $rows[$i][0];
                    $rented_by = $rows[$i][2];
                    $disabled = $rented_by ? "disabled" : "";
                ?>
                    <tr>
                        <td>
                            <input type="checkbox" 
                                   name="check_<?php echo $inst_id; ?>" 
                                   value="<?php echo $inst_id; ?>" 
                                   <?php echo $disabled; ?> />
                        </td>

                        <?php for ($j = 0; $j < $col_count; $j++) { ?>
                            <td><?php echo htmlspecialchars($rows[$i][$j] ?? ''); ?></td>
                        <?php } ?>
                    </tr>
                <?php } ?>
            </tbody>
        </table>

        <p><input type="submit" name="delete_btn" value="Delete Selections" /></p>
    </form>

    <form method="POST">
        <input type="submit" name="add_btn" value="Add Extra Records" />
    </form>

    <?php
}

$conn = new mysqli('localhost', 'weicheng.du', 'woaiDWC1314', 'instrument_rentals');

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    if (isset($_POST['add_btn'])) {
        $add_sql = file_get_contents('add_instruments.sql');
        $conn->multi_query($add_sql);

        while ($conn->more_results() && $conn->next_result()) {

        }
        $_SESSION["add"]+=10;
        header("Location: {$_SERVER['REQUEST_URI']}", true, 303);
        exit();
    }


    if (isset($_POST['delete_btn'])) {
        $del_sql = file_get_contents('delete_instrument.sql');
        $stmt = $conn->prepare($del_sql);
        $stmt->bind_param('i', $inst_id);

        foreach ($_POST as $key => $val) {
            if (strpos($key, 'check_') === 0) {
                $inst_id = intval($val);
                $stmt->execute();
                $_SESSION["delete"]++;
            }
        }

        $stmt->close();

        header("Location: {$_SERVER['REQUEST_URI']}", true, 303);
        exit();
    }
}



$select_sql = file_get_contents('select_instruments.sql');
$result = $conn->query($select_sql);

if (!$result) {
    die("Query failed: " . $conn->error);
}

result_to_html_table($result);
$conn->close();
?>

</body>
</html>
