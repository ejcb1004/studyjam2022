<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>LV1 INSERT | Study Jam</title>
</head>

<body>
    <a href="../index.php">Home</a>
    <span>&nbsp;>&nbsp;</span>
    <b>Insert</b>

    <h1>LV1 INSERT Query</h1>

    <?php
        require_once "../classes/level-1.class.php";

        // INSERT statement
        $data = (new LevelOne)->levelOne_insert();
    ?>
</body>

</html>