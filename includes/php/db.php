<?php
    /* verbindung mit mySQL, mit Hilfe eines PHP PDO Obiect */
    $dbHost = getenv('DB_HOST');
    $dbName = getenv('DB_NAME');
    $dbUser = getenv('DB_USER');
    $dbPassword = getenv('DB_PASSWORD');

    $dbConnection = new PDO(
        "mysql:host=$dbHost;dbname=$dbName;charset=utf8",
        $dbUser,
        $dbPassword
    );

    $dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);/* fehlermodus */

    function fetchQuestionByID($id, $dbConnection){
        $queryQuestions = $dbConnection->query("SELECT * FROM `questions` WHERE `id`= $id");
        $row = $queryQuestions->fetch(PDO::FETCH_ASSOC);
        return $row;
    }

?>