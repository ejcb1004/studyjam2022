<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Level 2 | Study Jam</title>
</head>

<body>
    <p>Welcome to Study Jam Level 2!</p>

    <?php
        require_once "../classes/level-2.class.php";

        $data = (new LevelTwo)->levelTwoSelect();
        // $data = (new LevelTwo)->levelTwoInsert();
        // $data = (new LevelTwo)->levelTwoUpdate();
        // $data = (new LevelTwo)->levelTwoDelete();
    ?>
</body>

</html>