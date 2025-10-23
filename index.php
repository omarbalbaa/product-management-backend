<?php
require_once __DIR__ . '/app/core/Database.php';

$db = new Database();

header("Access-Control-Allow-Origin: https://product-management-frontend.pages.dev");
header("Access-Control-Allow-Methods: GET, POST, DELETE, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");
header("Access-Control-Allow-Credentials: true");

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit();
}

$requestUri = $_SERVER['REQUEST_URI'];
$requestMethod = $_SERVER['REQUEST_METHOD'];

// http://localhost/backend/?route=product
$route = $_GET['route'] ?? '';

switch ($route) {
  case 'user':
    require_once __DIR__ . '/app/controllers/UserController.php';
    break;

  case 'product':
    require_once __DIR__ . '/app/controllers/ProductController.php';
    break;

  default:
    header('Content-Type: application/json');
    echo json_encode(["message" => "Welcome to API root"]);
}
