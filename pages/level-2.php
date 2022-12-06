<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Study Jam</title>
</head>

<body>
    <p>Welcome to Study Jam Level 2!</p>

    <?php
    require_once "connection.php";

    $test = (new Connection)->connect()->query("SELECT * FROM topics")->fetchAll(PDO::FETCH_ASSOC);
    foreach ($test as $item) {
        echo $item['id'] . ' ' . $item['topic_name'] . '<br>';
    }
    ?>
</body>

</html>