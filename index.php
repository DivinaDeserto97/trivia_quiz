<?php
require ('./includes/php/session.php');
$pageID = 0;
?>
<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Trivie Quiz</title>

    <?php require ('./includes/php/srcUp.php'); ?>

</head>
<body class='container'>
    <form action='./pages/question.php' method='post'>
        <?php
        require ('./includes/php/haeder.php');

        ?>
        <section class='row'>
            <label>Choose theme</label>
            <select class='form-select' aria-label='Default select example' name='thema'>
                <?php
                    require('./includes/php/db.php');
                    $query = $dbConnection->query("SELECT `thema` FROM `Themen`");
                    while ($row = $query->fetch(PDO::FETCH_ASSOC)) {
                        $value = $row['thema'];
                        echo "<option value='$value'>$value</option>";
                    }
                ?>
            </select>
            <label for='questionNumber'>The number of question:</label>
            <input type='number' name='question_number' min='2' max='40' value=''></input>
        </section>
        <input type='hidden' name='referenz' value='0'></input>
        <?php require ('./includes/php/footer.php'); ?>
    </form>
</body>
<?php require ('./includes/php/srcUp.php'); ?>
</html>