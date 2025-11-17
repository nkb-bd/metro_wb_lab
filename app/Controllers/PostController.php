<?php
namespace App\Controllers;

use App\Core\Controller;
use App\Core\Session;
use App\Models\Post;

class PostController extends Controller {
    public function index() {
        $user = Session::get('user');
        if (!$user) {
            header('Location: /login');
            exit;
        }
        $this->view('posts.php', ['user' => $user]);
    }

    public function create() {
        $user = Session::get('user');
        if (!$user) {
            header('Location: /login');
            exit;
        }

        $content = trim($_POST['content'] ?? '');
        
        if (strlen($content) < 1) {
            Session::set('error', 'Post content cannot be empty.');
            header('Location: /posts');
            exit;
        }

        Post::create($user['id'], $content);
        Session::set('success', 'Post created successfully!');
        header('Location: /posts');
    }

    public function getPosts() {
        header('Content-Type: application/json');

        try {
            $page = (int)($_GET['page'] ?? 1);
            $limit = 10;
            $offset = ($page - 1) * $limit;

            $posts = Post::getAll($limit, $offset);

            echo json_encode([
                'success' => true,
                'posts' => $posts,
                'hasMore' => count($posts) === $limit
            ]);
        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode([
                'success' => false,
                'error' => $e->getMessage()
            ]);
        }
    }
}

