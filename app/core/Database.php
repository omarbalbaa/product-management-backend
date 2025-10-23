<?php
class Database {
  private $host;
  private $db_name;
  private $username;
  private $password;
  public $conn;

  private function loadEnv($path) {
    if (!file_exists($path)) return;
    $lines = file($path, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
    foreach ($lines as $line) {
      if (strpos(trim($line), '#') === 0) continue;
      [$key, $val] = array_map('trim', explode('=', $line, 2) + [1 => '']);
      if ($key !== '') putenv("$key=$val");
    }
  }

  public function __construct() {
    $this->loadEnv(__DIR__ . '/../../.env');

    $this->host = getenv('DB_HOST') ?: '';
    $this->db_name = getenv('DB_NAME') ?: '';
    $this->username = getenv('DB_USER') ?: '';
    $this->password = getenv('DB_PASS') ?: '';
  }

  public function connect() {
    $this->conn = null;
    try {
      $dsn = "mysql:host={$this->host};dbname={$this->db_name};charset=utf8";
      $this->conn = new PDO($dsn, $this->username, $this->password);
      $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch(PDOException $e) {
      echo "Connection error: " . $e->getMessage();
    }
    return $this->conn;
  }
}
