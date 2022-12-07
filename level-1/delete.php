<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>LV1 DELETE | Study Jam</title>
</head>

<body>
    <a href="../index.php">Home</a>
    <span>&nbsp;>&nbsp;</span>
    <b>Delete</b>

    <h1>LV1 DELETE Query</h1>

    <?php
        require_once "../classes/level-1.class.php";

        // DELETE statement
        $data = (new LevelOne)->levelOne_delete();
    ?>
</body>

</html>