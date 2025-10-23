<?php
class Product {
  private $conn;
  private $table = "products";

  public function __construct($db) {
    $this->conn = $db;
  }

  public function getAll($search = "", $limit = 8, $offset = 0) {
    $query = "SELECT * FROM products";
    if ($search) {
        $query .= " WHERE name LIKE :search OR category LIKE :search";
    }
    $query .= " ORDER BY id DESC LIMIT :limit OFFSET :offset";
    
    $stmt = $this->conn->prepare($query);
    
    if ($search) {
        $searchTerm = "%$search%";
        $stmt->bindParam(':search', $searchTerm, PDO::PARAM_STR);
    }
    
    $stmt->bindParam(':limit', $limit, PDO::PARAM_INT);
    $stmt->bindParam(':offset', $offset, PDO::PARAM_INT);
    
    $stmt->execute();
    return $stmt;
  }

  public function create($data) {
    $query = "INSERT INTO $this->table (name, price, image, description, category) VALUES (?, ?, ?, ?, ?)";
    $stmt = $this->conn->prepare($query);
    return $stmt->execute([
      $data['name'], $data['price'], $data['image'], $data['description'], $data['category']
    ]);
  }

  public function getTotal($search = "") {
    $query = "SELECT COUNT(*) as total FROM products";
    if ($search) {
        $query .= " WHERE name LIKE :search OR category LIKE :search";
    }
    
    $stmt = $this->conn->prepare($query);
    
    if ($search) {
        $searchTerm = "%$search%";
        $stmt->bindParam(':search', $searchTerm, PDO::PARAM_STR);
    }
    
    $stmt->execute();
    return $stmt->fetch(PDO::FETCH_ASSOC)['total'];
  }
}
