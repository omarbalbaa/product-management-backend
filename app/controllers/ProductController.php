<?php
session_start();
require_once __DIR__ . '/../models/Product.php';
require_once __DIR__ . '/../core/Database.php';

$db = (new Database())->connect();
$product = new Product($db);
$method = $_SERVER['REQUEST_METHOD'];

if ($method === 'GET') {
    $search = $_GET['search'] ?? "";
    $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
    $limit = isset($_GET['limit']) ? (int)$_GET['limit'] : 8;
    $offset = ($page - 1) * $limit;
    
    $total = $product->getTotal($search);
    $result = $product->getAll($search, $limit, $offset);
    $products = $result->fetchAll(PDO::FETCH_ASSOC);
    
    header('Content-Type: application/json');
    echo json_encode([
        'products' => $products,
        'total' => $total,
        'page' => $page,
        'limit' => $limit
    ]);
}

if ($method === 'POST') {
  if (!isset($_SESSION['user'])) {
    http_response_code(401);
    echo json_encode(["error" => "Unauthorized"]);
    exit;
  }

  $name = $_POST['name'] ?? '';
  $price = $_POST['price'] ?? '';
  $description = $_POST['description'] ?? '';
  $category = $_POST['category'] ?? '';
  $imagePath = null;

  if (!empty($_FILES['image']['name'])) {
    $targetDir = __DIR__ . '/../../public/uploads/';
    if (!is_dir($targetDir)) mkdir($targetDir, 0777, true);
    $imageName = time() . '_' . basename($_FILES['image']['name']);
    $targetFile = $targetDir . $imageName;
    if (move_uploaded_file($_FILES['image']['tmp_name'], $targetFile)) {
      $imagePath = $imageName;
    }
  }

  $ok = $product->create([
    'name' => $name,
    'price' => $price,
    'image' => $imagePath,
    'description' => $description,
    'category' => $category
  ]);
  echo json_encode(["success" => $ok]);
}
