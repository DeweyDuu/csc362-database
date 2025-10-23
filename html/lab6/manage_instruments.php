<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

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

        <p>
            <input type="submit" name="delete_btn" value="Delete Selections" />
        </p>
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
