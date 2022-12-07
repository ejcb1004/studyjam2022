<?php

class Connection {
	private $servername = "localhost";
	private $username = "root";
	private $password = "";
	private $database = "studyjam2022";
	protected $link;

	public function connect() {
		try {
			$this->link = new PDO(
				"mysql:host=$this->servername;dbname=$this->database",
			 	$this->username, $this->password,
			);
			$this->link -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$this->link -> exec("set names utf8");
		} catch (PDOException $e) {
			echo "Connection error: " . $e->getMessage();
		}
		return $this->link;
	}
}

?>
