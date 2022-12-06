<?php
    require_once "connection.php";

    class LevelTwo
    {
        public function levelTwoSelect()
        {

        }

        public function levelTwoInsert()
        {

        }

        public function levelTwoUpdate()
        {
            
        }

        public function levelTwoDelete()
        {
            
        }
    }

    $test = (new Connection)->connect()->query("SELECT * FROM topics")->fetchAll(PDO::FETCH_ASSOC);
    foreach ($test as $item) {
        echo $item['id'] . ' ' . $item['topic_name'] . '<br>';
    }
?>