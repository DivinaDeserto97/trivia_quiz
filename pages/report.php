<?php 
    require ('./../includes/php/session.php');
    if (isset($_POST['referenz'])){
        $pageID = 41;
    } else {
        $pageID = -1;
    }
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
    <section  style='position: fixed; top:50%; left:0%; width: 100%;'>
        <?php
            $thema = $_POST['thema'];
            require ('./../includes/php/db.php');
            require ('./../includes/php/haeder.php');
            $query = $dbConnection->query("SELECT * FROM `Themen` WHERE `thema`= '$thema'");
            while ($row = $query->fetch(PDO::FETCH_ASSOC)) {
                $value = $row['thema'];
            }
            $id = (intval($_POST['question']));
            $right = 0;
            for($i = 1; $i< $id ; $i++){
                $qn = 'question' . $i;
                $right = $right + intval($_SESSION[$qn]['answer']);
            }


            if($id === $right){
                echo "<div class='col d-flex justify-content-center'>
                        <h3 >all right</h3>
                    </div>";
            } elseif (0 === $right) {
                echo "<div class='col d-flex justify-content-center'>
                        <h3>all false</h3>
                    </div>";
            } else {
            echo "<div class='col d-flex justify-content-center'>
                    <h3>you hafe $right from $id</h3>
                </div>";
            }
        ?>

        
        <?php require ('./../includes/php/footer.php'); ?>
    </section>
</body>
<?php
    require ('./../includes/php/srcDown.php');
    session_reset();
?>
</html>