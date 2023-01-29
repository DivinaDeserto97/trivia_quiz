<?php 
    require ('./../includes/php/session.php');
    print_r($_POST);
    print "<br>";
    if (isset($_POST['referenz'])){
        if($_POST['referenz'] === '0'){
            $max = 40 - number_format($_POST['question_number']);
            $min = 0;
            $start = rand($min, $max);
            $lastID = $start + number_format($_POST['question_number']);
            $pageID = $start + 1;
            $link = 'question.php';
        } else {
            $pageID = number_format($_POST['beforID']) + 1;
            $lastID = number_format($_POST['lastID']);
            if($pageID < $lastID){
                $link = 'question.php';
            } else {
                $link = 'report.php';
            }
        }
    } else {
        $pageID = 42;
    }
    
?>
<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Trivie Quiz/question<?php echo $pageID; ?></title>

    <?php require ('./../includes/php/srcUp.php'); ?>
</head>
<body>
    <form action=<?php print $link; ?> method='post'>
        <?php
            echo "max=$max<br> start=$start<br> pageID=$pageID <br>";
            $thema = $_POST['thema'];

            require ('./../includes/php/haeder.php');
            require ('./../includes/php/db.php');
            $query = $dbConnection->query("SELECT * FROM `Themen` WHERE `thema`= '$thema'");
            while ($row = $query->fetch(PDO::FETCH_ASSOC)) {
                $value = $row['thema'];
                echo "<p>$value</p>";
                print_r($row);
            }
        ?>
        <?php require ('./../includes/php/footer.php'); ?>
        <input type='hidden' name='thema' value=<?php print $thema; ?>></input>
        <input type='hidden' name='referenz' value='1'></input>
        <input type='hidden' name='lastID' value=<?php print $lastID; ?>></input>
        <input type='hidden' name='beforID' value=<?php print $pageID; ?>></input>
    </form>
</body>
<?php require ('./../includes/php/srcDown.php'); ?>
</html>