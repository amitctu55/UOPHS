<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Doctorreg extends CI_Controller {

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
		 date_default_timezone_set("Asia/Kolkata");
		 $date=date('Y-m-d h:i:s');
		 $this->load->model('doctorregmodel');
		 
	}
	 
	public function index()
	{
		$this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('doctorreg');
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');
	}
	public function create()
	{
		
		if(isset($_POST['submit'])){
			
			$uploadimage='';
			$id=base64_decode($this->input->post('eid'));
			$bdate=$this->input->post('dob');
			$cdate=date('Y-m-d');
			
			
			/* $datac=array('dpr'=>$this->input->post('dpr'),'fddicenter'=>$this->input->post('fddicenter'),'fddi_subcenter'=>$this->input->post('fddi_subcenter'),'coursemenu'=>$this->input->post('coursemenu'),'fname'=>$this->input->post('t_fname'),'mname'=>$this->input->post('t_mname'),'lname'=>$this->input->post('t_lname'),'ffname'=>$this->input->post('f_fname'),'fmname'=>$this->input->post('f_mname'),'flname'=>$this->input->post('f_lname'),'foccupation'=>$this->input->post('f_occupation'),'fcontact'=>$this->input->post('f_contact'),'aadhar'=>$this->input->post('aadhar'),'dob'=>$this->input->post('dob'),'category'=>$this->input->post('category'),'religion'=>$this->input->post('religion'),'marital_status'=>$this->input->post('marital_status'),'id_document'=>$this->input->post('id_document'),'documentnumber'=>$this->input->post('documentno'),'address'=>$this->input->post('address'),'state'=>$this->input->post('state'),'district'=>$this->input->post('district'),'block'=>$this->input->post('block'),'village'=>$this->input->post('village'),'phone'=>$this->input->post('phone'),'pin'=>$this->input->post('pin'),'email'=>$this->input->post('email'),'mobile'=>$this->input->post('mobile'),'education'=>$this->input->post('education'),'educationstream'=>$this->input->post('educationstream'),'passyear'=>$this->input->post('passyear'),'markpercent'=>$this->input->post('markobtain'),'instname'=>$this->input->post('institutename'),'skills'=>$this->input->post('skill'),'currentemployment'=>$this->input->post('currentemployment'),'companyadd'=>$this->input->post('companyaddress'),'companycontact'=>$this->input->post('companycontact'),'companyeamil'=>$this->input->post('companyemail'),'t_bankname'=>$this->input->post('t_bankname'),'t_bankbranch'=>$this->input->post('t_bankbranch'),'t_accountno'=>$this->input->post('t_accountno'),'t_ifsc'=>$this->input->post('t_ifsc'));
			
			$this->session->set_userdata($datac); */
				
			$check = $this->doctorregmodel->doctor_duplicacy_check();
			if($check !='OK')
			{
				if($check == 'MOBILE')
					$emsg='Mobile Already Exist';
				else if($check == 'EMAIL')
					$emsg='Email Already Exist';
				else if($check == 'BOTH')
					$emsg='Email and Mobile Already Exist';
				
				$msg="<div class='alert alert-danger'><strong>Failed!</strong> $emsg</div>";
				$this->session->set_flashdata('flashmsg',$msg);
				
				redirect(base_url().'doctor/doctorreg');
				exit();
			}
			else //if($id=='')
			{
			    
				$uploadimage=$_FILES['uploadimage']['name'];
				$extsign = pathinfo($_FILES['uploadimage']['name'],PATHINFO_EXTENSION);
				
				$uploadimage2=$_FILES['idproof']['name'];
				$extsign2 = pathinfo($_FILES['idproof']['name'],PATHINFO_EXTENSION);
				
				$uploadimage3=$_FILES['regproof']['name'];
				$extsign3 = pathinfo($_FILES['regproof']['name'],PATHINFO_EXTENSION);
				
				if($uploadimage != '') 
				{	
					$rname=rand(1111111,999999999);
					$date=date('Y-m-d');
					$uploadimage='dr_profile_pic_'.$rname.$date.'.'.$extsign;
					$rname=rand(1111111,999999999);
					$uploadimage2='dr_id_proof_'.$rname.$date.'.'.$extsign;
					$rname=rand(1111111,999999999);
					$uploadimage3='dr_reg_proof_'.$rname.$date.'.'.$extsign;
					
					$config['upload_path']          = './public/assets/upload/';
					$config['allowed_types'] = 'jpg|png|jpeg|JPG|PNG|JPEG';
					$config['max_size']             = 2048;
					$config['quality'] = '60%';
					$config['file_name']  = $uploadimage;
					$this->load->library('upload', $config);
					
					if ( ! $this->upload->do_upload('uploadimage'))
					{
						$error = $this->upload->display_errors();
						$flashmsg='<div class="alert alert-danger">
						  <strong>Failed!</strong>'.$error.'
						</div>';
						$this->session->set_flashdata('flashmsg',$flashmsg);
						redirect(base_url().'doctor/doctorreg');
						exit();
						
					}
					else{
						
					$config['file_name']  = $uploadimage2;
					$this->load->library('upload', $config);
					$this->upload->do_upload('idproof');
					
					$config['file_name']  = $uploadimage3;
					$this->load->library('upload', $config);
					$this->upload->do_upload('regproof');
					
						
						if($this->doctorregmodel->traineereginsert($uploadimage,$uploadimage2,$uploadimage3)) 
						{//$myString = print_r($_POST, TRUE);
							$msg="<div class='alert alert-success'><strong>Success!</strong> Data Added Successfully </div>";
							$this->session->set_flashdata('flashmsg',$msg);
							
							/* $datac=array('dpr','fddicenter','fddi_subcenter','coursemenu','fname','mname','lname','ffname','fmname','flname','foccupation','fcontact','aadhar','dob','category','religion','marital_status','id_document','documentnumber','address','state','district','block','village','phone','pin','email','mobile','education','educationstream','passyear','markpercent','instname','skills','currentemployment','companyadd','companycontact','companyeamil','t_bankname','t_bankbranch','t_accountno','t_ifsc');
							$this->session->unset_userdata($datac); */
						}
						else{
							
							$msg="<div class='alert alert-danger'><strong>Failed!</strong> Something went wrong. Please try again. </div>";
							$this->session->set_flashdata('flashmsg',$msg);
						}
						
						
						
					}
				}
				
			}	
		}
		redirect(base_url().'doctor/doctorreg');
	}
	
	function getobjectivelist(){
		$type=$this->input->post('type');
		if($type=='C')
			$table='clinic';
		else if($type=='H')
			$table='hospital';
		echo "<option value='' > Select ".$table."</option>";
		$clist=$this->db->get_where($table,array('status'=>1));
		foreach(@$clist->result() as $list){
			echo "<option value='".$list->id."' >".$list->name."</option>";
		}				
	}

}
