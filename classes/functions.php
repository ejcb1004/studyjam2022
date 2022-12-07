<?php
require_once "connection.php";

class Functions
{
    // variable
    private $data;
    private $id;

    // functions
    public function getAll() 
    {
        return (new Connection)->connect()->query("SELECT * FROM topics")->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getWhere($id) 
    {
        return (new Connection)->connect()->query("SELECT * FROM topics WHERE id = $id")->fetchAll(PDO::FETCH_ASSOC);
    }

    public function showAll($data) 
    {
        // loop through $data
        echo '<p>id | topic_name</p>';
        foreach ($data as $item) {
            echo $item['id'] . ' | ' . $item['topic_name'] . '<br>';
        }
    }

    public function select()
    {
        // select all
        $this->data = $this->getAll();

        // loop through $data
        $this->showAll($this->data);
    }

    public function selectWhere()
    {
        $this->id = 1;
        // select all
        $this->data = $this->getWhere($this->id);

        // loop through $data
        $this->showAll($this->data);
    }

    public function insert()
    {
        try {
            // initialize local variable
            $this->id = 2;

            // insert data
            $this->data = (new Connection)->connect()->query("INSERT INTO topics(id, topic_name) VALUES($this->id, 'Java')")->fetch(PDO::FETCH_ASSOC);
            
            // display inserted data
            $this->data = $this->getWhere($this->id);
            echo 'Inserted: ';
            $this->showAll($this->data);

        } catch (Exception $e) {
            echo 'Failed to insert data. Please check for duplicates in id.' . '<br>';
        }

        // display results of topics table
        $this->data = $this->getAll();
        $this->showAll($this->data);
    }

    public function update()
    {
        // initialize local variable
        $id = 2;

        // select data before update and display
        $this->data = (new Connection)->connect()->query("SELECT * FROM topics WHERE id = $id")->fetchAll(PDO::FETCH_ASSOC);
        foreach ($this->data as $item) {
            echo 'Before: ' . $item['id'] . ' | ' . $item['topic_name'] . '<br>';
        }

        // update data
        $this->data = (new Connection)->connect()->query("UPDATE topics SET topic_name = 'Python' WHERE id = $id")->fetchAll(PDO::FETCH_ASSOC);

        // select data after update and display
        $this->data = (new Connection)->connect()->query("SELECT * FROM topics WHERE id = $id")->fetchAll(PDO::FETCH_ASSOC);
        foreach ($this->data as $item) {
            echo 'After: ' . $item['id'] . ' | ' . $item['topic_name'] . '<br>';
        }

        // display results of topics table
        $this->data = $this->getAll();
        $this->showAll($this->data);
    }

    public function delete()
    {
        // initialize local variable
        $id = 2;

        // delete data
        $this->data = (new Connection)->connect()->query("DELETE FROM topics WHERE id = $id");
        if ($this->data) {
            echo 'Item at id ' . $id . ' deleted.' . '<br>';
        } else {
            echo 'Failed to delete item at id ' . $id . ' or item does not exist.' . '<br>';
        }

        // display results of topics table
        $this->data = $this->getAll();
        $this->showAll($this->data);
    }

    public function simpleJoin()
    {
        $this->data = (new Connection)->connect()->query("SELECT topics.id, subtopics.subtopic_name FROM topics JOIN subtopics on topics.id = subtopics.topic_id")->fetchAll(PDO::FETCH_ASSOC);
        echo '<p>topic_id | subtopic_name</p>';
        foreach ($this->data as $item) {
            echo $item['id'] . ' | ' . $item['subtopic_name'] . '<br>';
        }
    }
}
