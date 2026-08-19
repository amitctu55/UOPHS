<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Clinicreg extends CI_Controller {

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
		$this->load->view('clinicreg');
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');
	}
	
	/***************************************/
	
	public function create()
	{
		
		if(isset($_POST['submit'])){
			
			$uploadimage='';
			$id=base64_decode($this->input->post('eid'));
			$type= $this->input->post('objective');			
			if($type=='H'){
				$typename='hospital';
			}else if($type=='C'){
				$typename='clinic';
			}
			
				
			$check = $this->doctorregmodel->clinic_duplicacy_check($typename);
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
				
				redirect(base_url().'doctor/clinicreg');
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
					$uploadimage=$typename.'_profile_pic_'.$rname.$date.'.'.$extsign;
					$rname=rand(1111111,999999999);
					$uploadimage2=$typename.'_id_proof_'.$rname.$date.'.'.$extsign;
					$rname=rand(1111111,999999999);
					$uploadimage3=$typename.'_reg_proof_'.$rname.$date.'.'.$extsign;
					
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
						redirect(base_url().'doctor/clinicreg');
						exit();
						
					}
					else{
						
					$config['file_name']  = $uploadimage2;
					$this->load->library('upload', $config);
					$this->upload->do_upload('idproof');
					
					$config['file_name']  = $uploadimage3;
					$this->load->library('upload', $config);
					$this->upload->do_upload('regproof');
					
						
						if($this->doctorregmodel->clinicinsert($uploadimage,$uploadimage2,$uploadimage3)) 
						{
							$msg="<div class='alert alert-success'><strong>Success!</strong> Data Added Successfully</div>";
							$this->session->set_flashdata('flashmsg',$msg);
							
						
						}
						else{
							$msg="<div class='alert alert-danger'><strong>Failed!</strong> Something went wrong. Please try again.</div>";
							$this->session->set_flashdata('flashmsg',$msg);
						}
						
						
						
					}
				}
				
			}	
		}
		redirect(base_url().'doctor/clinicreg');
	}
	

	public function viewclinic()
	{
		$data['clinic']=$this->db->get_where('clinic');
		$data['module']='clinic';
		$this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('clinicview',$data);
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');
	}
	public function viewhospital()
	{
		$data['hospital']=$this->db->get_where('hospital');
		$data['module']='hospital';
		$this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('clinicview',$data);
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');
	}
	
	public function clinicapprove()
	{
		$did=$this->input->post('did');
		$current=$this->db->select('approved')->get_where('clinic',array('id'=>$did))->row()->approved;
		if($current=='1'){
			$this->db->set('approved','0')->where(array('id'=>$did))->update('clinic');
			$response=array('status'=>'0');
		}else if($current=='0'){
			$this->db->set('approved','1')->where(array('id'=>$did))->update('clinic');
			$response=array('status'=>'1');
		}
		echo json_encode($response);
	}
	 
	public function clinicverify()
	{
		$did=$this->input->post('did');
		$current=$this->db->select('verified')->get_where('clinic',array('id'=>$did))->row()->verified;
		if($current=='1'){
			$this->db->set('verified','0')->where(array('id'=>$did))->update('clinic');
			$response=array('status'=>'0');
		}else if($current=='0'){
			$this->db->set('verified','1')->where(array('id'=>$did))->update('clinic');
			$response=array('status'=>'1');
		}
		echo json_encode($response);
	}
	 
	public function hospitalapprove()
	{
		$did=$this->input->post('did');
		$current=$this->db->select('approved')->get_where('hospital',array('id'=>$did))->row()->approved;
		if($current=='1'){
			$this->db->set('approved','0')->where(array('id'=>$did))->update('hospital');
			$response=array('status'=>'0');
		}else if($current=='0'){
			$this->db->set('approved','1')->where(array('id'=>$did))->update('hospital');
			$response=array('status'=>'1');
		}
		echo json_encode($response);
	}
	 
	public function hospitalverify()
	{
		$did=$this->input->post('did');
		$current=$this->db->select('verified')->get_where('hospital',array('id'=>$did))->row()->verified;
		if($current=='1'){
			$this->db->set('verified','0')->where(array('id'=>$did))->update('hospital');
			$response=array('status'=>'0');
		}else if($current=='0'){
			$this->db->set('verified','1')->where(array('id'=>$did))->update('hospital');
			$response=array('status'=>'1');
		}
		echo json_encode($response);
	}
	 
	 
	public function updateclinic($id)
	{
		$data['clinic']=$this->db->get_where('clinic',array('id'=>$id))->row();
		$data['module']='clinic';
		
		if($_POST['submit']){
				         $this->load->model('doctorregmodel');
                 $this->doctorregmodel->updateclinic($id);
         
				    $msg="<div class='alert alert-success'><strong>Success!</strong> Data Added Successfully</div>";
							$this->session->set_flashdata('flashmsg',$msg);
				     }
		
		$this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('updateclinic',$data);
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');
	}
	 
	  public function clinicview($id)
	      {

		$data['clinic']=$this->db->get_where('clinic',array('id'=>$id))->row();
		$data['module']='clinic';
	
				     
         // print_r($data);

 
		$this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('viewclinic',$data);
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');
	
      
	}
	 
	 
	public function updatehospital()
	{

		$id=$this->uri->segment(4);
		$data['hospital']=$this->db->get_where('hospital',array('id'=>$id))->row();
		$data['module']='hospital';
		
				     
				     if($_POST['submit']){
				         $this->load->model('doctorregmodel');
                 $this->doctorregmodel->updatehospital($id);
         
				    $msg="<div class='alert alert-success'><strong>Success!</strong> Data Added Successfully</div>";
							$this->session->set_flashdata('flashmsg',$msg);
							
						
						}
					
		$this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('updatehospital',$data);
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');
	}
	
	public function hospitalview($id)
	{    
		$data['hospital']=$this->db->get_where('hospital',array('id'=>$id))->row();
		$data['module']='hospital';
		
		
		
		
		
		$this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('viewhospital',$data);
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');
	
	}
	
	
	 public function deletehospital()
    {
           $id=$this->uri->segment(4);
        	//$this->load->model('doctorregmodel');
           $this->load->model('doctorregmodel');
           	$this->doctorregmodel->hospitaldelete($id);
           redirect(base_url().'doctor/clinicreg/viewhospital');
         //echo"delete successfully";   
    }  
	
	public function insert()
	{
		
		if(isset($_POST['submit']))
			$uploadimage='';
		//	$id=base64_decode($this->input->post('id'));
        $uploadimage=$_FILES['uploadimage']['name'];
		$extsign = pathinfo($_FILES['uploadimage']['name'],PATHINFO_EXTENSION);
       
					
					if($uploadimage != '') 
				{	
					$rname=rand(1111111,999999999);
					$date=date('Y-m-d');
					$uploadimage=$typename.'_profile_pic_'.$rname.$date.'.'.$extsign;
					
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
						redirect(base_url().'doctor/clinicreg/insert');
						exit();
					}


					if($this->doctorregmodel->gallery($uploadimage)) 
						{
							$msg="<div class='alert alert-success'><strong>Success!</strong> Data Added Successfully</div>";
							$this->session->set_flashdata('flashmsg',$msg);
							
						
						}
						else{
							$msg="<div class='alert alert-danger'><strong>Failed!</strong> Something went wrong. Please try again.</div>";
							$this->session->set_flashdata('flashmsg',$msg);
						}
						
						
					
                    }

					
		$this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('gallery');
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');
	
	              

       }
       
       
       
       public function biomedicalmachine()
	{

   if(isset($_POST['submit']))
			$uploadimage='';
		//	$id=base64_decode($this->input->post('id'));
        $uploadimage=$_FILES['uploadimage']['name'];
		$extsign = pathinfo($_FILES['uploadimage']['name'],PATHINFO_EXTENSION);
       
					
					if($uploadimage != '') 
				{	
					$rname=rand(1111111,999999999);
					$date=date('Y-m-d');
					$uploadimage=$typename.'_profile_pic_'.$rname.$date.'.'.$extsign;
					
					$config['upload_path']          = './public/assets/upload/';
					$config['allowed_types'] = 'jpg|png|jpeg|JPG|PNG|JPEG|PDF|pdf';
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
						redirect(base_url().'doctor/clinicreg/biomedicalmachine');
						exit();
					}


					if($this->doctorregmodel->biomedicalmachine($uploadimage)) 
						{
							$msg="<div class='alert alert-success'><strong>Success!</strong> Data Added Successfully</div>";
							$this->session->set_flashdata('flashmsg',$msg);
							
						
						}
						else{
							$msg="<div class='alert alert-danger'><strong>Failed!</strong> Something went wrong. Please try again.</div>";
							$this->session->set_flashdata('flashmsg',$msg);
						}
                    }


		 $this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('equepment');
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');
	}

         
           public function advertisment()
	{
		
		if(isset($_POST['submit']))
    $id=base64_decode($this->input->post('eid'));
			if($id=='')
    {

			$uploadimage='';
		//	$id=base64_decode($this->input->post('id'));
        $uploadimage=$_FILES['uploadimage']['name'];
		$extsign = pathinfo($_FILES['uploadimage']['name'],PATHINFO_EXTENSION);
       
					
					if($uploadimage != '') 
				{	
					$rname=rand(1111111,999999999);
					$date=date('Y-m-d');
					$uploadimage=$typename.'_profile_pic_'.$rname.$date.'.'.$extsign;
					
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
						redirect(base_url().'doctor/clinicreg/advertisment');
						exit();
					}


					if($this->doctorregmodel->advertisment($uploadimage)) 
						{
							$msg="<div class='alert alert-success'><strong>Success!</strong> Data Added Successfully</div>";
							$this->session->set_flashdata('flashmsg',$msg);
						}
						else{
							$msg="<div class='alert alert-danger'><strong>Failed!</strong> Something went wrong. Please try again.</div>";
							$this->session->set_flashdata('flashmsg',$msg);
						}
						
						}
					
                    }

					
		$this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('advertisment');
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');
	
	              

       }


}
