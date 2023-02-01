<?php
require ('./includes/php/session.php');
require ('./includes/php/db.php');
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

    <style>
        .footer-light{
            position: bottom;
            bottom: 0;
            background-color: rgb(0, 0, 255);
        }
    </style>
</head>
<body class='container'>
    <form action='./pages/question.php' method='post'>
        <?php
        require ('./includes/php/haeder.php');
        ?>
        <section class='row'>
            <h6>Choose thema:</h6>
            <div class='d-flex justify-content-center'>
            <?php
                $query = $dbConnection->query("SELECT `thema` FROM `Themen`");
                $i = 1;
                echo "<select class='form-select form-select-lg mb-3' aria-label='.form-select-lg example' name='thema'>";
                while ($row = $query->fetch(PDO::FETCH_ASSOC)) {
                    $thema = $row['thema'];
                    echo "<option value='$thema'>$thema</option>";
                    /* echo "<div class='form-check m-1'>
                          <input class='form-check-input' type='checkbox' value='$thema' id='thema_$i' name='thema_$thema'>
                          <label class='form-check-label' for='flexCheckDefault'>$thema</label>
                          </div>";

                    $i++; */
                }
                echo "</select>";
                ?>
                </div>
            <label for='questionNumber'>The number of question per thema:</label>
            <input type='number' name='question_number' min='2' max='99' value=''></input>
        </section>
        <input type='hidden' name='referenz' value='0'></input>
        <input type='hidden' name='question' value='1'></input>
        <?php require ('./includes/php/footer.php'); ?>
    </form>
</body>
<?php require ('./includes/php/srcUp.php'); ?>
</html>