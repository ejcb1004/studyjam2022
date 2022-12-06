<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Level 1 | Study Jam</title>
</head>

<body>
    <p>Welcome to Study Jam Level 1!</p>

    <?php
        require_once "../classes/level-1.class.php";

        $data = (new LevelOne)->levelOneSelect();
        // $data = (new LevelOne)->levelOneInsert();
        // $data = (new LevelOne)->levelOneUpdate();
        // $data = (new LevelOne)->levelOneDelete();
    ?>
</body>

</html>