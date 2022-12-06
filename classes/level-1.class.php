<?php
require_once "connection.php";

class LevelOne
{
    // variable
    private $select_data;
    private $insert_data;
    private $update_data;
    private $delete_data;

    public function levelOneSelect()
    {
        $this->select_data = (new Connection)->connect()->query("SELECT * FROM topics")->fetchAll(PDO::FETCH_ASSOC);
        foreach ($this->select_data as $item) {
            echo $item['id'] . ' ' . $item['topic_name'] . '<br>';
        }
    }

    public function levelOneInsert()
    {

    }

    public function levelOneUpdate()
    {

    }

    public function levelOneDelete()
    {
        
    }
}
