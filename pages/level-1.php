<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Level 1 | Study Jam</title>
</head>

<body>
    <h1>Welcome to Study Jam Level 1!</h1>

    <?php
        require_once "../classes/level-1.class.php";

        // SELECT statement
        echo '<h2>SELECT statement</h2>';
        $data = (new LevelOne)->levelOneSelect();

        // INSERT statement
        echo '<h2>INSERT statement</h2>';
        $data = (new LevelOne)->levelOneInsert();

        // UPDATE statement
        echo '<h2>UPDATE statement</h2>';
        $data = (new LevelOne)->levelOneUpdate();
        
        // DELETE statement
        echo '<h2>DELETE statement</h2>';
        $data = (new LevelOne)->levelOneDelete();
    ?>
</body>

</html>