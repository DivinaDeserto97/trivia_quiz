<?php 
    require ('./../includes/php/session.php');
    $pageID = 41;

?>
<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Trivie Quiz/question<?php echo "$pageID"; ?></title>

    <?php require ('./../includes/php/srcUp.php'); ?>
</head>
<body>
    <?php
        if($pageID === 42){
            echo "<h1 class='d-flex justify-content-center'>Somtig is rong</h1>";
            echo "<h2><a href='/index.php'>try it agan</a></h2>";
        }
        echo "$rmax $start $pageID <br>";
        $thema = $_POST['question_number'];
        require ('./../includes/php/db.php');
        require ('./../includes/php/haeder.php');
        $query = $dbConnection->query("SELECT * FROM `Themen` WHERE `thema`= $thema");
        while ($row = $query->fetch(PDO::FETCH_ASSOC)) {
            $value = $row['thema'];
            echo "<p>$value</p>";
            print_r($row);
        }
    ?>
    <?php require ('./../includes/php/footer.php'); ?>
</body>
<?php require ('./../includes/php/srcDown.php'); ?>
</html>