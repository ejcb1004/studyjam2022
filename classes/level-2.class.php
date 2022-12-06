<?php
require_once "connection.php";

class LevelTwo
{
    // variable
    private $select_data;
    private $insert_data;
    private $update_data;
    private $delete_data;

    public function levelTwoSelect()
    {
        $this->select_data = (new Connection)->connect()->query("SELECT * FROM topics")->fetchAll(PDO::FETCH_ASSOC);
        foreach ($this->select_data as $item) {
            echo $item['id'] . ' ' . $item['topic_name'] . '<br>';
        }
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
