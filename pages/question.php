<?php 
    require ('./../includes/php/session.php');
    require('./../includes/php/db.php');
    require('./../includes/php/tools.php');
    print "POST =       #";
    print_r($_POST);
    print "<br>";
    print "SESSION =    #";
    print_r($_SESSION);
    if (isset($_POST['referenz'])){
        if($_POST['referenz'] === '0'){
            $thema = $_POST['thema'];
            $queryQuestions = $dbConnection->query("SELECT * FROM `Themen` WHERE `thema`= '$thema'");
            $ThemenRow = $queryQuestions->fetch(PDO::FETCH_ASSOC);
            // min max db
            $maxDB = $ThemenRow['thema-id-bis'];
            $minDB = $ThemenRow['thema-id-von'];
            $questionTotal = $maxDB - $minDB;

            $question_number = intval($_POST['question_number']);
            $max = min($question_number, $questionTotal);
            $random = rand(0 , $max);
            $start = $minDB + $random;
            $pageID = $start;
            $lastID = $start + $question_number;
            $q = number_format($_POST['question']);
            print "<br>";
            print "$q";
            if($q === $question_number){
                $link = './report.php';
            } else {
                $link = './question.php';
            }
        } else {
            $question_number = number_format($_POST['question_number']);
            $pageID = 1 + number_format($_POST['beforID']);
            $lastID = number_format($_POST['lastID']);
            $q = number_format($_POST['question']) + 1;
            print "<br>";
            print "$q";
            $_SESSION[$q] = $_POST;
            if($q == $question_number){
                $link = './report.php';
            } else {
                $link = './question.php';
            }
        }
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
    <title>Trivie Quiz/question<?php echo $pageID; ?></title>

    <?php require ('./../includes/php/srcUp.php'); ?>
</head>
<body>
    <form action=<?php print $link; ?> method='post'>
        <?php
            require ('./../includes/php/haeder.php');


            $row = fetchQuestionByID($pageID, $dbConnection);
            $question = $row['question_text'];
        
            echo "<h4 class='d-flex justify-content-center'>Frage $q  von $question_number: $question</h4>";
            $correct = $row['correct'];
            for ($i = 1; $i < 6; $i++){
                $a = 'answer-' . $i;
                if(isset($row[$a] )&& $row[$a]!= ''&& $row[$a]!= ' '){
                    if ($correct === $a) $value = 1;
                    else $value = 0;
                    $answer = $row[$a];
                    echo "<div class='form-check d-flex justify-content-center'>
                          <input class='' type='radio' name='answer' value='$value'></input>
                          <label class='d-flex justify-content-center form-check-label'>$answer</label><br>
                          </div>";
                }
            }
        ?>
        <?php require ('./../includes/php/footer.php'); ?>
        <input type='hidden' name='referenz' value='1'></input>
        <input type='hidden' name='question_number' value=<?php print $question_number; ?>></input>
        <input type='hidden' name='lastID' value=<?php print $lastID; ?>></input>
        <input type='hidden' name='beforID' value=<?php print $pageID; ?>></input>
        <input type='hidden' name='question' value=<?php print $q; ?>></input>
    </form>
</body>
<?php require ('./../includes/php/srcDown.php'); ?>
</html>