<?php
class User {
  private $conn;
  private $table = "users";

  public function __construct($db) {
    $this->conn = $db;
  }

  public function createUser($username, $password) {
    $hash = password_hash($password, PASSWORD_BCRYPT);
    $stmt = $this->conn->prepare("INSERT INTO $this->table (username, password) VALUES (?, ?)");
    return $stmt->execute([$username, $hash]);
  }

  public function findByUsername($username) {
    $stmt = $this->conn->prepare("SELECT * FROM $this->table WHERE username = ?");
    $stmt->execute([$username]);
    return $stmt->fetch(PDO::FETCH_ASSOC);
  }
}
