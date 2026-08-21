<?php
defined('BASEPATH') OR exit('No direct script access allowed');
error_reporting(E_ALL);
ini_set('display_errors', 1);
error_log("Login controller loaded");

class Login extends CI_Controller {

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     * 		http://example.com/index.php/welcome
     *	- or -
     * 		http://example.com/index.php/welcome/index
     *	- or -
     * Since this controller is set as the default controller in
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see https://codeigniter.com/user_guide/general/urls.html
     */

	function __construct() {
		 parent::__construct();
		 error_log("Login controller constructor called - CLASS: Login");
		 date_default_timezone_set("Asia/Kolkata");
	}

	public function index()
	{
		error_log("INDEX METHOD CALLED - CONTROLLER: Login");
		$this->load->view('inc/topheaderlink');
		$this->load->view('mlogin');
	}

	public function login()
	{
		error_log("Login method called - START");
		error_log("Login method called - URI: ".$this->uri->uri_string());
		error_log("Login method called - Segments: ".print_r($this->uri->segment_array(), true));
		error_log("Request method: " . $_SERVER['REQUEST_METHOD']);
		error_log("POST data: " . print_r($_POST, true));
		file_put_contents('C:/xampp/htdocs/upchar/login_attempt.log', "Login method called at " . date('Y-m-d H:i:s') . "\n", FILE_APPEND);

		$usn = $this->input->post('name');
		$pwd = md5($this->input->post('password'));
		error_log("Username: " . $usn . ", Password hash: " . $pwd);
		error_log("Login method called with POST data: " . print_r($_POST, true));

		 $this->db->select('*')
		      ->from('login')
		      ->where('username', $usn)
		      ->where('password', $pwd)
		      ->where('status', '1');


	 	$count = $this->db->count_all_results();

		if($count=='1')
		{
			$this->db->where('username', $usn);
			$this->db->where('password', $pwd);
			$query = $this->db->get('login')->row();
			$data=array('adminuserid'=>$query->id,'username'=>$query->username,'pwd'=>$query->password,'code'=>$query->role,'institution_id'=>$query->id);
			//print_r($data);
			$this->session->set_userdata($data);
			switch($query->role){
				case 'A': 	redirect(base_url().'masters/dashboard');
							break;
				case 'C': 	redirect(base_url().'ccenter/dashboard');
							break;
				case 'SC': 	redirect(base_url().'sccenter/dashboard');
							break;
				case 'AG': 	redirect(base_url().'agency/dashboard');
							break;
				case 'NMU':	redirect(base_url().'nmu/dashboard');
							break;
				case 'MIN':	redirect(base_url().'dipp/dashboard');
							break;
				default:	redirect(base_url().'login');

			}

		}
		else{
			$msg="<p style='color:#f71212;font-weight:600;'>Invalid Username or Password </p>";
			$this->session->set_flashdata('flashmsg',$msg);
			redirect(base_url().'login');
		}

	}


}