<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$CI =& get_instance();
echo 'Base URL: ' . $CI->config->base_url . '<br>';
echo 'Site URL (empty): ' . $CI->config->site_url('') . '<br>';
echo 'Site URL (test): ' . $CI->config->site_url('test') . '<br>';
echo 'Site URL (blog-detail): ' . $CI->config->site_url('blog-detail') . '<br>';
?>
