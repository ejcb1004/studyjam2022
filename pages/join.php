<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>JOIN | Study Jam 2022</title>
</head>

<body>
    <a href="../index.php">Home</a>
    <span>&nbsp;>&nbsp;</span>
    <b>Join</b>

    <h1>JOIN Query</h1>

    <?php
        require_once "../classes/functions.php";

        // INSERT statement
        $data = (new Functions)->simpleJoin();
    ?>
</body>

</html>