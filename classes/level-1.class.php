<?php
require_once "connection.php";

class LevelOne
{
    // variable
    private $select_data;
    private $insert_data;
    private $update_data;
    private $delete_data;

    public function getAll() {
        return (new Connection)->connect()->query("SELECT * FROM topics")->fetchAll(PDO::FETCH_ASSOC);
    }

    public function levelOneSelect()
    {
        // select all
        $this->select_data = $this->getAll();

        // loop through $select_data
        foreach ($this->select_data as $item) {
            echo $item['id'] . ' | ' . $item['topic_name'] . '<br>';
        }
    }

    public function levelOneInsert()
    {
        try {
            // initialize local variable
            $id = 2;

            // insert data
            $this->insert_data = (new Connection)->connect()->query("INSERT INTO topics(id, topic_name) VALUES($id, 'Java')")->fetch(PDO::FETCH_ASSOC);
            
            // display inserted data
            $this->insert_data = (new Connection)->connect()->query("SELECT * FROM topics WHERE id = $id")->fetchAll(PDO::FETCH_ASSOC);
            foreach ($this->insert_data as $item) {
                echo 'Inserted: ' . $item['id'] . ' | ' . $item['topic_name'] . '<br>';
            }
        } catch (Exception $e) {
            echo 'Failed to insert data. Please check for duplicates in id.';
        }

        // display results of topics table
        $this->insert_data = $this->getAll();
        foreach ($this->insert_data as $item) {
            echo $item['id'] . ' | ' . $item['topic_name'] . '<br>';
        }
    }

    public function levelOneUpdate()
    {
        // initialize local variable
        $id = 2;

        // select data before update and display
        $this->update_data = (new Connection)->connect()->query("SELECT * FROM topics WHERE id = $id")->fetchAll(PDO::FETCH_ASSOC);
        foreach ($this->update_data as $item) {
            echo 'Before: ' . $item['id'] . ' | ' . $item['topic_name'] . '<br>';
        }

        // update data
        $this->update_data = (new Connection)->connect()->query("UPDATE topics SET topic_name = 'Python' WHERE id = $id")->fetchAll(PDO::FETCH_ASSOC);

        // select data after update and display
        $this->update_data = (new Connection)->connect()->query("SELECT * FROM topics WHERE id = $id")->fetchAll(PDO::FETCH_ASSOC);
        foreach ($this->update_data as $item) {
            echo 'After: ' . $item['id'] . ' | ' . $item['topic_name'] . '<br>';
        }
    }

    public function levelOneDelete()
    {
        // initialize local variable
        $id = 0;

        // delete data
        $this->delete_data = (new Connection)->connect()->query("DELETE FROM topics WHERE id = $id");
        if ($this->delete_data) {
            echo 'Item at id ' . $id . ' deleted.' . '<br>';
        } else {
            echo 'Failed to delete item at id ' . $id . ' or item does not exist.' . '<br>';
        }

        // display results of topics table
        $this->delete_data = $this->getAll();
        foreach ($this->delete_data as $item) {
            echo $item['id'] . ' | ' . $item['topic_name'] . '<br>';
        }
    }
}
