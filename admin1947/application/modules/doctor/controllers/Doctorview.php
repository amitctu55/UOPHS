<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Doctorview extends CI_Controller {

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
		 
	}
	 
	public function index()
	{
		
		$this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('doctorview');
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');
	
	}
	public function approve()
	{
		$did=$this->input->post('did');
		$current=$this->db->select('approved')->get_where('profile_dr',array('id'=>$did))->row()->approved;
		if($current=='1'){
			$this->db->set('approved','0')->where(array('id'=>$did))->update('profile_dr');
			$response=array('status'=>'0');
		}else if($current=='0'){
			$this->db->set('approved','1')->where(array('id'=>$did))->update('profile_dr');
			$response=array('status'=>'1');
		}
		echo json_encode($response);
	}
	 
	public function verify()
	{
		$did=$this->input->post('did');
		$current=$this->db->select('verified')->get_where('profile_dr',array('id'=>$did))->row()->verified;
		if($current=='1'){
			$this->db->set('verified','0')->where(array('id'=>$did))->update('profile_dr');
			$response=array('status'=>'0');
		}else if($current=='0'){
			$this->db->set('verified','1')->where(array('id'=>$did))->update('profile_dr');
			$response=array('status'=>'1');
		}
		echo json_encode($response);
	}
	
	 
    public function viewdoctor($id)
    {
      //echo"hello i am dharmendra rajput from bareilly";
    	$data['profile_dr']=$this->db->get_where('profile_dr',array('id' =>$id))->row();
		$data['module']='profile_dr';
		$data_spl=$this->db->select('specialization_id')->get_where('dr_specialization',array('user_id'=>$id))->result_array();
		$data['data_spl']= array_map (function($value){
					return $value['specialization_id'];
				} , $data_spl);		
			//	print_r($data['data_spl']);
	//	$did=$this->input->post('id');
		
	//	$this->Doctorregmode->viewdoc($did);
		
		$this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('viewprofile',$data);
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');

       // $this->Doctorregmodel->viewdoc();
  
  
      }

	  // update doctor details  10/01/2019
	
         public function updatedoctor()
         {
            $id=$this->uri->segment(4);
         $result['profile_dr']=$this->db->get_where('profile_dr',array('id' =>$id))->row();
         $result['module']='profile_dr';
   
       $data_spl=$this->db->select('specialization_id')->get_where('dr_specialization',array('user_id'=>$id))->result_array();
		$result['data_spl']= array_map (function($value){
					return $value['specialization_id'];
				} , $data_spl);	
				
				     if($_POST['submit']){
				         $this->load->model('doctorregmodel');
                 $this->doctorregmodel->updatedoctor($id);
         
				$msg="<div class='alert alert-success'><strong>success!</strong> success</div>";
				$this->session->set_flashdata('flashmsg',$msg);
				
				         
				         
				     }
              
         
         
         
     	$this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('doctorupdate',$result);
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');

          }
          
          public function deletedoctor()
    {
           $id=$this->uri->segment(4);
        	//$this->load->model('doctorregmodel');
           $this->load->model('doctorregmodel');
           	$this->doctorregmodel->deletedoctor($id);
           redirect(base_url().'doctor/doctorview');
         // echo"delete successfully";   
    }  





         
	
	
	public function duplicate()
	{
		$data['traineeview']=$this->db->order_by('id','DESC')->get_where('fddi_trainee_duplicate');
		$this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('traineeviewduplicate',$data);
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');
	}
	
	public function fetchdata()
	{
		$vid=$this->input->post('vid');
		$type=$this->input->post('type');
		$subcenterid=$this->input->post('subcenterid');
		
		/*$this->db->where('fddi_trainee_batch.trainee_id IS NULL');
		$this->db->join('fddi_trainee_batch','fddi_trainee_registration.id = fddi_trainee_batch.trainee_id','left');
		$traineeview=$this->db->order_by('id','DESC')->get_where('fddi_trainee_registration');*/
		
		$alldata=array();
		$counttot=0;
		
		if($type=='dpr')
		{
			$this->db->where('fddi_trainee_batch.trainee_id IS NULL');
			$this->db->join('fddi_trainee_batch','fddi_trainee_registration.id = fddi_trainee_batch.trainee_id','left');
			$traineeview=$this->db->order_by('id','DESC')->get_where('fddi_trainee_registration',array('dpr'=>$vid));
		}
		else if($type=='center')
		{
			$this->db->where('fddi_trainee_batch.trainee_id IS NULL');
			$this->db->join('fddi_trainee_batch','fddi_trainee_registration.id = fddi_trainee_batch.trainee_id','left');
			$traineeview=$this->db->order_by('id','DESC')->get_where('fddi_trainee_registration',array('center'=>$vid));
		}
		else if($type=='subcenter')
		{
			$this->db->where('fddi_trainee_batch.trainee_id IS NULL');
			$this->db->join('fddi_trainee_batch','fddi_trainee_registration.id = fddi_trainee_batch.trainee_id','left');
			$traineeview=$this->db->order_by('id','DESC')->get_where('fddi_trainee_registration',array('subcenter'=>$vid));
		}
		else if($type=='course')
		{
			$this->db->where('fddi_trainee_batch.trainee_id IS NULL');
			$this->db->join('fddi_trainee_batch','fddi_trainee_registration.id = fddi_trainee_batch.trainee_id','left');
			$traineeview=$this->db->order_by('id','DESC')->get_where('fddi_trainee_registration',array('course'=>$vid,'subcenter'=>$subcenterid));
		}
		
		foreach($traineeview->result() as $traineedata){ 
		/* $dpr=$this->db->get_where('dpr_create',array('dpr_id'=>$traineedata->dpr))->row('dpr_name');
		$center=$this->db->get_where('fddi_center',array('id'=>$traineedata->center))->row('center_name');
		$subcenter=$this->db->get_where('fddi_subcenter',array('subcenter_id'=>$traineedata->subcenter))->row('subcenter_name');
		$course=$this->db->get_where('master_course',array('course_id'=>$traineedata->course))->row('course_name');
		 */
			$alldata['table'][]='<tr>
						<td>'.$traineedata->id.'</td>
						<td>'.$traineedata->t_first_name.' '.$traineedata->t_middle_name.' '.$traineedata->t_last_name.'</td>
						<td>'.$traineedata->f_first_name.' '.$traineedata->f_middle_name.' '.$traineedata->f_last_name.' </td>
						<td>'.formateDate($traineedata->dob).'</td>
						<td>'.$traineedata->address.'</td>
						<td>'.$traineedata->aadhar.'</td>
						<td>'.$dpr.'</td>
						<td>'.$center.'</td>
						<td>'.$subcenter.'</td>
						<td>'.$course.'</td>
					  </tr>';
				$counttot++;
		}
		
		
			
			$alldata['counttot']=$counttot;
			if($counttot==0){$alldata['table'][]='<tr>
								<td colspan="9">No result found</td>
							</tr>';}
		echo json_encode($alldata);
	}

    
    

    



	

    
    
    
}
