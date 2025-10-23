<?php
session_start();
require_once __DIR__ . '/../core/Database.php';
require_once __DIR__ . '/../models/User.php';

$db = (new Database())->connect();
$user = new User($db);

$method = $_SERVER['REQUEST_METHOD'];

switch ($method) {
  case 'POST':
    $data = json_decode(file_get_contents("php://input"), true);
    $username = $data['username'] ?? '';
    $password = $data['password'] ?? '';

    $found = $user->findByUsername($username);

    if ($found && password_verify($password, $found['password'])) {
      $_SESSION['user'] = $found['username'];
      echo json_encode(["success" => true, "user" => $found['username']]);
    } else {
      echo json_encode(["success" => false, "message" => "Invalid credentials"]);
    }
    break;

  case 'GET':
    echo json_encode([
      "loggedIn" => isset($_SESSION['user']),
      "user" => $_SESSION['user'] ?? null
    ]);
    break;

  case 'DELETE':
    session_destroy();
    echo json_encode(["success" => true]);
    break;

  default:
    http_response_code(405);
    echo json_encode(["error" => "Method not allowed"]);
}
