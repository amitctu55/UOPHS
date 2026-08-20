<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Test extends CI_Controller {
    public function index()
    {
        echo 'Test controller working!';
        // Test database connection
        $this->load->database();
        $query = $this->db->query('SELECT VERSION() AS version');
        $result = $query->row();
        echo '<br>MySQL version: ' . $result->version;
    }
}

