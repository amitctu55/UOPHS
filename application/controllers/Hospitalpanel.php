<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Hospitalpanel extends CI_Controller {

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
		 $this->load->model('Hospital_Model');
		 if(!$this->session->userdata('hosuserid')){
			 $page=$this->uri->segment('1');
			 $excep_array=array('hospital-aindex','hospital-login','hospital-signup','hospital-verifymobile','hospital-forgotpassword','hospital-verifymobileforgot');
			 if (!in_array($page, $excep_array))
				redirect('hospital-login');
		 }else{
			$this->did= $this->db->where('uid',$this->session->userdata('hosuserid'))->get('hospital')->row()->id;
			// $this->did=$this->session->userdata('hosuserid');
		 }
		 
	}
	
	public function index()
	{
		$data['specialization']=$this->db->order_by('name','asc')->where('status','1')->get('master_specialization')->result();
		$this->load->view('home',$data);
	}
	
	public function dashboard()
	{
		//if profile createdview main dash board 
		//if not and if at 0
		$userid =$this->did;
		
		
         $this -> db -> where('institute_id', $userid);   
        $this -> db -> where('institution_type', 'H');  
        $this -> db -> where('status', '1');   
		 $this -> db -> where('appointment_date', date('Y-m-d'));   
        $query = $this -> db -> get('appointment');
		$data['todayappointment']=$query -> num_rows();
         
        $this -> db -> where('institute_id', $userid);   
        $this -> db -> where('institution_type', 'H');   
        $this -> db -> where('status', '1');   
        $query = $this -> db -> get('appointment');
		$data['totalappointment']=$query -> num_rows();
		
		
		$query =$this->db->select('profile_dr.*,dr_practice.status as p_status')->join('profile_dr','profile_dr.id=dr_practice.user_id')->get_where('dr_practice',array('institution_id'=>$this->did,'type'=>'H'));	
		$data['totaldoctor']=$query -> num_rows();
		$this->load->view('hospitalpanel/milestone',$data);
		
	}
	
	public function aindex()
	{
	    
	    $this->load->view('hospitalpanel/aindex');
	    
	}
	
	
	public function login()
	{
		$this->load->view('hospitalpanel/login');
	}
	
	public function signup()
	{
		$this->load->view('hospitalpanel/sign_up');
	}
	
	public function forgotpassword()
	{
		$this->load->view('hospitalpanel/forgot_password');
	}
	
	public function verifymobile()
	{
		$this->load->view('hospitalpanel/otp_send_pass');
	}
	
	/* public function verifymobileforgot()
	{
		$this->load->view('otp_send_pass_forgot');
	} */
	
	
	public function managedoctor()
	{
		
		$data['clinic']=$this->db->select('profile_dr.*,dr_practice.status as p_status')->join('profile_dr','profile_dr.id=dr_practice.user_id')->get_where('dr_practice',array('institution_id'=>$this->did,'type'=>'H'))->result();	
			
		$this->load->view('hospitalpanel/managedoctor',$data);
	}
	
	public function doctorlist()
	{
		
		$data['doctorlist']=$this->db->get_where('profile_dr',array('approved'=>'1','verified'=>'1'))->result();
		$data['doctorlist']=$this->db->select('profile_dr.*,dr_practice.status as p_status')->join('dr_practice','profile_dr.id=dr_practice.user_id AND institution_id=\''.$this->did.'\' AND type=\'H\' ','left')->get_where('profile_dr',array('approved'=>'1','verified'=>'1'))->result();//last_query();	
		//$data['hospital']=$this->db->get_where('hospital', array('status'=>'1'))->result();
		
		$this->load->view('hospitalpanel/doctorlist',$data);
	}
	
		public function doctordetail()
	{
		$id=$this->uri->segment(2);
		$data['d']=$this->db->get_where('profile_dr',array('approved'=>'1','verified'=>'1','id'=>$id))->row();
		$this->load->view('hospitalpanel/doctor_detail',$data);
	}
	public function report()
   {
     $data['clinic']=$this->db->select('profile_dr.*,dr_practice.status as p_status')->join('profile_dr','profile_dr.id=dr_practice.user_id')->get_where('dr_practice',array('institution_id'=>$this->did,'type'=>'H'))->result();	
			
		$this->load->view('hospitalpanel/report',$data);
   }



       public function patient()
	        {
		
		$id=$this->uri->segment(2);
	    //$did=mybase64_decode($this->uri->segment(3));
		$data['p']=$this->db->select('userlogin.*,appointment.*,sm_checkout.*,profile_dr.*')->join('userlogin','userlogin.USERID=appointment.user_id')->join('sm_checkout','sm_checkout.id=appointment.checkout_id','LEFT')->join('profile_dr','profile_dr.id=appointment.doctor_id')->get_where('appointment',array('appointment_id'=>$id))->row();	
		
		$this->Hospital_Model->patient();
		
		
       //print_r($data);
        
        $this->load->view('hospitalpanel/patienthistory',$data);
		
	    
	} 
	 public function data()
     {
    $userid =$this->did;
    $id=$this->input->get('id');

    $data['data'] =$this->db->select('hospital.*,appointment.*')->join('hospital','hospital.uid=appointment.institute_id')->get_where('appointment',array('doctor_id'=>$id,'institute_id'=>$this->did))->result();
    //$data['hospital'] = $this->db->count_all_results('appointment');
    //print_r($data);
   
         $this -> db -> where('institute_id', $userid);   
        $this -> db -> where('institution_type', 'H');  
        $this -> db -> where('doctor_id', $id);   
		 //$this -> db -> where('appointment_date', date('Y-m-d'));   
        $query = $this -> db -> get('appointment');
		$data['hospital']=$query -> num_rows();
       $this->load->view('hospitalpanel/doctorappointment',$data);


   }

	
	
	public function manageappointment()
	{
		
		
		$userid =$this->did;
        $this -> db -> select('appointment_id,appointment_date,from_timing,to_timing,appointment_name as patient_name, fee,amount,doctor_id,institute_id,institution_type,status,payment_status');   
        $this -> db -> order_by('appointment_id');   
        $this -> db -> where('institute_id', $userid);   
        $this -> db -> where('institution_type', 'H'); 
		$this -> db -> where('status !=', '0');   		
		if(isset($_GET['d']) && $_GET['d']!='')
        $this -> db -> where('appointment_date', $_GET['d']);   
        $query = $this -> db -> get('appointment');
		if($query -> num_rows() > 0)
        {
			$results=$query->result();
			foreach($results as $row){
				
				$this -> db -> where('id', $row->doctor_id);   
				$institute = $this -> db -> get('profile_dr')->row();
				
				$dataarray[]=array('appointment'=>$row,'institute'=>$institute);
			}
			
		}else{
			$dataarray=array();
		}
		
		$data['appointments']=$dataarray;
		
		
		
		$this->load->view('hospitalpanel/manageappointment',$data);
	}
	
	


	public function adddoctor()
	{
		if(isset($_POST['submit']))
			$this->Hospital_Model->profile_step1();
		
		$data['data']=$this->db->get_where('profile_dr',array('user_id'=>$this->did))->row();			
		/* $data_spl=$this->db->select('specialization_id')->get_where('dr_specialization',array('user_id'=>$this->did))->result_array();
		$data['data_spl']= array_map (function($value){
					return $value['specialization_id'];
				} , $data_spl);	 */	
		$this->load->view('hospitalpanel/adddoctor',$data);
	}
	
	public function checkdoctor(){
		$key = strtolower($this->input->post('key'));
		$this -> db -> select(' * ');
        //$this -> db -> from('hospitallogin');
        $this -> db -> where('email', $key);        
		$this -> db -> or_where('mobile', $key);
		
		$d=$this->db->get_where('profile_dr',array())->row();
		 if($d){
			$drarray=array();
			$drarray['drid']=$d->id;
			$drarray['gender']=$d->gender;
			$drarray['city']=$d->city;
			$drarray['regd_no']=$d->regd_no;
			$drarray['regd_council']=$d->regd_council;
			$drarray['regd_year']=$d->regd_year;
			$drarray['college']=$d->college;
			$drarray['year']=$d->year;
			$drarray['exp']=$d->exp;
			$drarray['email']=$d->email;
			$drarray['mobile']=$d->mobile;
			$drarray['name']=$d->fname.' '.$d->lname;
			$drarray['image']=admin_url().'public/assets/upload/'.$d->drimage;
			
			
			$quastring=array();
			$qu=$this->db->get_where('dr_qualifications',array('user_id'=>$d->id));
			foreach(@$qu->result() as $q)
				$quastring[]=($q->qualification_id);
			
			$splstring=array(); 
			$sp=$this->db->get_where('dr_specialization',array('user_id'=>$d->id))->result();
			foreach($sp as $s)
				$splstring[]=($s->specialization_id);
			
			$drarray['specialization']=$splstring;			
			$drarray['qualification']=$quastring;			
			$drarray['experience']=$d->exp;
			
			
		 $response=array('status'=>'success','msg'=>'Doctor Detail Successfully Listed','data'=>$drarray);
		 
		echo json_encode($response); 
		
	}else{	
	$response=array('status'=>'failed','msg'=>'');
		echo json_encode($response); 
	}
		
		
	}
	
	public function linkdoctor()
	{
		$already=$this->input->post('link');
	   $drid=$this->input->post('link2');
	   
	   if($already==1 && $drid!=''){
		   
		   $result=$this->db->where(array('type'=>'H','institution_id'=>$this->did,'user_id'=>$drid))->get('dr_practice');
			$count=$result->num_rows();
			if($count){
				$practiceid=$result->row()->id;
				$response=array('status'=>'Alert','msg'=>'Doctor Profile Already Linked to the Hospital!');
				
			}else{
				$udata=array('institution_id'=>$this->did,'user_id'=>$drid,'type'=>'H','status'=>'0');
				$this->db->insert('dr_practice',$udata);
				$practiceid=$this->db->insert_id();
				//email to dr to approve link 
				$data=$this->db->get_where('profile_dr',array('id'=>$drid))->row();
				$this->load->library('azad_lib');
		 	$body="Request from  abcd hospital for profile approval   ".base_url().'home/securepapproval/'.mybase64_encode($practiceid).'/'.mybase64_encode($drid).'';
			$this->azad_lib->sendMail($data->email,'Request from  abcd hospital for profile approval',$body);
			$response=array('status'=>'Success','msg'=>'Doctor Profile Linked to the Hospital Successfully!');
			
			}
	   }else{
		   
		   $email=strtolower(trim($this->input->post('email')));
		
		$mobile=trim($this->input->post('mobile'));
		$countemail=$this->db->where('EMAIL',$email)->count_all_results('hospitallogin');
		$countmobile=$this->db->where('MOBILE',$mobile)->count_all_results('hospitallogin');
		if($countemail > 0  && $email!='')
		{
			$response=array('status'=>'failed','msg'=>'Email Id Already Registered ! ');
		}
		else if($countmobile > 0 && $mobile!='')
		{
			$response=array('status'=>'failed','msg'=>'Mobile No. Already Registered ! ');
		}
		else if($mobile!='' || $email!='')
		{
			$fullname=$this->input->post('name');
			$name=explode(' ',ucwords($fullname));
			$fname=$name[0];
			$lname=@$name[1];
			$otp=rand(100000,999999);
			$pass=md5($otp);
			
			$udata=array(
					'PASSWORD'=>$pass,
					'FNAME'=>$fname,
					'LNAME'=>$lname,
					
					'STATUS'=>'0',
					'APPROVED'=>'1',
					'OTP'=>$otp,
					'REG_DATE'=>date('Y-m-d'),
					'GENDER'=>'M'
					); 
			if($email)
			$udata['EMAIL']=$email;
			if($mobile)
			$udata['MOBILE']=$mobile;
			if($this->db->insert('doctorlogin',$udata))
			{   
				$thisid = $this->db->insert_id();
				
		   
		   $udata=array('email'=>$this->input->post('email'),'mobile'=>$this->input->post('mobile'),'fname'=>$this->input->post('name'),'gender'=>$this->input->post('gender'),'city'=>$this->input->post('city'),'regd_no'=>$this->input->post('regno'),'regd_council'=>$this->input->post('council'),'regd_year'=>$this->input->post('ryear'),'college'=>$this->input->post('college'),'exp'=>$this->input->post('exp'),'year'=>$this->input->post('year'),'user_id'=>$thisid);
			$this->db->insert('profile_dr',$udata);
			
			$drid=$this->db->insert_id();
			$specialisation = $this->input->post('specialisation');
			foreach($specialisation as $s){
				$spldata[]=array('user_id'=>$drid,'specialization_id'=>$s);
			}
			$qualification =$this->input->post('qualification');
			foreach($qualification as $q){
				$qualdata[]=array('user_id'=>$drid,'qualification_id'=>$q);
			}
			$this->db->insert_batch('dr_qualifications',$qualdata);
			$this->db->insert_batch('dr_specialization',$spldata);
			
			$udata=array('institution_id'=>$this->did,'user_id'=>$drid,'type'=>'H','status'=>'0');
			$this->db->insert('dr_practice',$udata);
			$practiceid=$this->db->insert_id();
			//email to dr to claim approve link with login
			$this->load->library('azad_lib');
			$body="Request from  abcd hospital for profile approval <BR>   Login: $mobile / $otp  ".base_url().'home/securepapproval/'.mybase64_encode($practiceid).'/'.mybase64_encode($drid).'';
			$this->azad_lib->sendMail($email,'Request from  abcd hospital for profile approval',$body);
			/* $msg="Dear ".$name[0].", Wecome to Upchar medical solutions. Your otp is $otp
thank you for being a part of Upchar.";
			sendsms($msg,$mobile); */
				$response=array('status'=>'success','msg'=>'Created new Doctor Profile & Linked Successfully!');
			}else{
				$response=array('status'=>'failed','msg'=>'Failed to create new Doctor Profile ! ');
			}
			
		}
	   }
	  // echo json_encode($response);
	   $flashmsg=$response;//'Updated Successfully!';
						$this->session->set_flashdata('flashmsg',$flashmsg);
						redirect(base_url().'hospitalpanel/doctorlist');
	}
	
	public function unlinkdoctor()
	{
		$already=$this->input->post('link');
	   $drid=$this->input->post('link2');
	   
	   if($already==1 && $drid!=''){
		   
		   $result=$this->db->where(array('type'=>'H','institution_id'=>$this->did,'user_id'=>$drid))->delete('dr_practice');
			if($result){
				
				$response=array('status'=>'Alert','msg'=>'Doctor Profile UnLinked from the Hospital!');
				
			}else{
				 $response=array('status'=>'Opps','msg'=>'Something went wrong');
			}
	   }else{
		   $response=array('status'=>'Opps','msg'=>'Something went wrong');
	   }
	      $flashmsg=$response;//'Updated Successfully!';
						$this->session->set_flashdata('flashmsg',$flashmsg);
						redirect(base_url().'hospitalpanel/doctorlist');
	}
	
	public function  updatedoctor()
	{
		$did=mybase64_decode($this->uri->segment(3));
		 if(isset($_POST['submit']))
			$this->Hospital_Model->profile_consultant_fee();
		
		$data['practice']=$this->db->get_where('dr_practice',array('type'=>'H','user_id'=>$did,'institution_id'=>$this->did))->row();
		
		$timings=$this->db->get_where('timing',array('user_id'=>$did,'user_type'=>'D','practice_id'=>$data['practice']->id));
		$data['timing_count']=$timings->num_rows();
		$data['timings']=$timings->result();
		
		$this->load->view('hospitalpanel/profile_consultant_fee',$data);
	}
	public function test_mail(){
		$this->load->library('azad_lib');
		//$body="Request from  abcd hospital for profile approval   ".base_url().'home/securepapproval/'.mybase64_encode($practiceid).'/'.mybase64_encode($drid).'';
		$body='qwertyuiopsdfghjklxcvbnm,rtyuiocvbndfghjbss fsd fadsfsdfads fsd fs fs f';
		$this->azad_lib->sendMail('azadhussain16@gmail.com','Request from  abcd hospital for profile approval',$body);
	}
	/**************************************************************/
	public function profile_consultant_fee()
	{
		$did=mybase64_decode($this->uri->segment(3));
		
		if(isset($_POST['submit']))
			$this->Hospital_Model->profile_step1();
		
		$data['data']=$this->db->get_where('profile_dr',array('user_id'=>$did))->row();			
		$data_spl=$this->db->select('specialization_id')->get_where('dr_specialization',array('user_id'=>$did))->result_array();
		$data['data_spl']= array_map (function($value){
					return $value['specialization_id'];
				} , $data_spl);		
			
		$data_qua=$this->db->select('qualification_id')->get_where('dr_qualifications',array('user_id'=>$did))->result_array();
		$data['data_qua']= array_map (function($value){
					return $value['qualification_id'];
				} , $data_qua);	
		$this->load->view('hospitalpanel/updatedoctor',$data);
	}
	public function test(){
	   $this->load->library('azad_lib');
			$body='Request from  abcd hospital for profile approval';
			$this->azad_lib->sendMail('azadhussain16@gmail.com','Request from  abcd hospital for profile approval',$body);
   }
	
	public function updateprofile()
	{
		if(isset($_POST['submit']))
			$this->Hospital_Model->updateprofile();
		$data['data']=$this->db->get_where('hospital',array('id'=>($this->did)))->row();	
			$this->load->view('hospitalpanel/updateclinic',@$data);
		
	}
	
	
	public function profile_clinicproof()
	{
		
		if(isset($_POST['submit']))
			$this->Hospital_Model->profile_clinicproof();
		$data['src']=$this->db->select('med_reg_proof')->get_where('hospital',array('id'=>$this->did))->row('med_reg_proof');
		if($data['src']=='')
			$data['imagerequired']='required';
		$this->load->view('hospitalpanel/profile_clinicproof',@$data);
	}
	
	public function profile_disppic()
	{
		if(isset($_POST['submit']))
			$this->Hospital_Model->profile_disppic();
		$data['src']=$this->db->select('drimage')->get_where('hospital',array('id'=>$this->did))->row('drimage');	
		if($data['src']=='')
			$data['imagerequired']='required';
		$this->load->view('hospitalpanel/profile_disppic',$data);
	}
	
	
	public function profile_maplocation()
	{
		if(isset($_POST['submit']))
			$this->Hospital_Model->profile_maplocation();
		$data['data']=$this->db->get_where('hospital',array('id'=>($this->did)))->row();	
		$this->load->view('hospitalpanel/profile_maplocation',$data);
	}
	
	public function profile_clinic_timing()
	{
		if(isset($_POST['submit']))
			$this->Hospital_Model->profile_clinic_timing();
		$timings=$this->db->get_where('timing',array('user_id'=>$this->did,'user_type'=>'H'));
		$data['timing_count']=$timings->num_rows();
		$data['timings']=$timings->result();
		$this->load->view('hospitalpanel/profile_clinic_timing',$data);
	}
	
	
	
	
	
	/******************************************************************/
	public function progress_profile()
	{
		$this->load->view('hospitalpanel/milestone');
	}
	
	public function profile_step1()
	{
		if(isset($_POST['submit']))
			$this->Doctor_Model->profile_step1();
		
		$data['data']=$this->db->get_where('profile_dr',array('user_id'=>$this->did))->row();			
		$data_spl=$this->db->select('specialization_id')->get_where('dr_specialization',array('user_id'=>$this->did))->result_array();
		$data['data_spl']= array_map (function($value){
					return $value['specialization_id'];
				} , $data_spl);		
		$this->load->view('hospitalpanel/profile_step1',$data);
	}
	
	public function profile_step2()
	{
		if(isset($_POST['submit']))
			$this->Doctor_Model->profile_step2();
		$data['data']=$this->db->get_where('profile_dr',array('user_id'=>$this->did))->row();	
		$this->load->view('hospitalpanel/profile_step2',$data);
	}
	
	public function profile_step3()
	{
		if(isset($_POST['submit']))
			$this->Doctor_Model->profile_step3();
		$data['data']=$this->db->get_where('profile_dr',array('user_id'=>$this->did))->row();	
		$data_qua=$this->db->select('qualification_id')->get_where('dr_qualifications',array('user_id'=>$this->did))->result_array();
		$data['data_qua']= array_map (function($value){
					return $value['qualification_id'];
				} , $data_qua);	
		$this->load->view('hospitalpanel/profile_step3',$data);
	}
	
	public function profile_drpic()
	{
		if(isset($_POST['submit']))
			$this->Doctor_Model->profile_drpic();
		$data['src']=$this->db->select('drimage')->get_where('profile_dr',array('user_id'=>$this->did))->row('drimage');	
		if($data['src']=='')
			$data['imagerequired']='required';
		$this->load->view('hospitalpanel/profile_drpic',$data);
	}
	public function profile_idproof()
	{
		if(isset($_POST['submit']))
			$this->Doctor_Model->profile_idproof();
		
		$data['src']=$this->db->select('id_proof')->get_where('profile_dr',array('user_id'=>$this->did))->row('id_proof');
		if($data['src']=='')
			$data['imagerequired']='required';
		$this->load->view('hospitalpanel/profile_idproof',$data);
	}
	
	public function profile_regproof()
	{
		if(isset($_POST['submit']))
			$this->Doctor_Model->profile_regproof();
		
		$data['src']=$this->db->select('med_reg_proof')->get_where('profile_dr',array('user_id'=>$this->did))->row('med_reg_proof');
		if($data['src']=='')
			$data['imagerequired']='required';
		$this->load->view('hospitalpanel/profile_regproof',$data);
	}
	
	public function profile_step4()
	{
		if(isset($_POST['submit']))
			$this->Doctor_Model->profile_step4();
		
		$data['data']=$this->db->get_where('profile_dr',array('user_id'=>$this->did))->row();	
		$this->load->view('hospitalpanel/profile_step4',$data);
	}
	
	
	public function addclinic()
	{
		if(isset($_POST['submit']))
		{
			$data['suggestedclinic'] = $this->Doctor_Model->addclinic();
			$this->load->view('hospitalpanel/clinic_sugestion',$data);
		}else
		{
			//select clinic if any one there own clinic 
			//$data['data']=$this->db->get_where('clinic',array('user_id'=>$this->did))->row();	
			$this->load->view('hospitalpanel/addclinic',@$data);
		}
	}
	
	
	public function addpractice()
	{
		if(isset($_POST['submit']))
		{
			$return = $this->Doctor_Model->addpractice();
			$data['suggestedclinic'] = $return['C'];
			$data['suggestedhospital'] = $return['H'];
			$this->load->view('hospitalpanel/practice_sugestion',$data);
		}else
		{
			//select clinic if any one there own clinic 
			//$data['data']=$this->db->get_where('clinic',array('user_id'=>$this->did))->row();	
			$this->load->view('hospitalpanel/addpractice',@$data);
		}
	}
	
	
	public function linkpractice()
	{
		if(isset($_POST['submit']))
			$this->Doctor_Model->linkpractice();
		
		//$data['data']=$this->db->get_where('profile_dr',array('user_id'=>$this->did))->row();	
		//$this->load->view('hospitalpanel/profile_step4',$data);
	}
	
	public function profile_step6()
	{
		if(isset($_POST['submit']))
			$this->Doctor_Model->profile_step6();
		
		//$data['data']=$this->db->get_where('profile_dr',array('user_id'=>$this->did))->row();	
		//$this->load->view('hospitalpanel/profile_step4',$data);
	}
	
	
	public function progress_profile2()
	{
		$this->load->view('hospitalpanel/milestone2');
	}
	
	public function progress_profile3()
	{
		$this->load->view('hospitalpanel/milestone3');
	}
	
	
	public function updateclinic()
	{
		$clinicid=$this->uri->segment(2);
		if(isset($_POST['submit']))
			$this->Doctor_Model->updateclinic();
		$data['data']=$this->db->get_where('clinic',array('id'=>mybase64_decode($clinicid)))->row();	
		$this->load->view('hospitalpanel/updateclinic',$data);
	}
	
	
	
	public function progress_profile4()
	{
		$this->load->view('hospitalpanel/milestone4');
	}
	
	
	public function manageownclinic()
	{
		if(isset($_POST['submit']))
			$this->Doctor_Model->profile_step2();
		$data['data']=$this->db->select('clinic.*,clinic_claimed.status as claim_status')->join('clinic','clinic.id=clinic_claimed.clinic_id')->get_where('clinic_claimed',array('did'=>$this->did))->result();	
		$this->load->view('hospitalpanel/manageownclinic',$data);
	}
	
	
	
	
	
	
	
	
	public function doctors()
	{
		$this->load->view('team_list');
	}
	
	public function doctor()
	{
		$id=$this->uri->segment(2);
		$data['d']=$this->db->get_where('profile_dr',array('approved'=>'1','verified'=>'1','id'=>$id))->row();
		$this->load->view('detail_page',$data);
	}
	
	public function gethint()
	{
		$q=$_REQUEST["q"]; 
		$sql="SELECT concat(fname,' ',lname) as name FROM `profile_dr` WHERE (fname LIKE '%$q%' or lname LIKE '%$q%' ) AND approved='1' AND verified='1' 
		UNION
		SELECT  name FROM `clinic` WHERE (name LIKE '%$q%'  ) AND status='1' 
		UNION
		SELECT name FROM `hospital` WHERE (name LIKE '%$q%'  ) AND status='1'
		";
		$result =$this->db->query($sql)->result();
		
		$json=array();

		foreach($result as $row) {
		  array_push($json, $row->name);
		}

		echo json_encode($json);
	}
	
	public function gethintcity()
	{
		$q=$_REQUEST["q"]; 
		$sql="SELECT id,name FROM `master_city` WHERE (name LIKE '%$q%'  ) AND status='1'	";
		$result =$this->db->query($sql)->result();
		
		$json=array();

		foreach($result as $row) {
		  array_push($json, array('value'=> $row->id,'label'=> $row->name));
		}

		echo json_encode($json);
	}
	
	
	public function search()
	{
		$keyword = $this->input->get('keyword');
		$spl = $this->input->get('spl');
		$city = $this->input->get('city');
		
		if($spl!=''){
			$this->db->where("specialization_id",$spl);
			$this->db->join("dr_specialization",'dr_specialization.user_id=profile_dr.id');
			$this->db->select("profile_dr.*, dr_specialization.specialization_id");
		}
		if($city!='')
			$this->db->where("city",$city);
		$this->db->like("concat(fname,' ',lname)",$keyword);
		
		$data['doctors']=$this->db->get_where('profile_dr',array('approved'=>'1','verified'=>'1'))->result();
		
		if($city!='')
			$this->db->where("city",$city);
		$this->db->like("name",$keyword);
		$this->db->or_like("tag",$keyword);
		$data['hospital']=$this->db->get_where('hospital', array('status'=>'1'))->result();
		
		if($city!='')
			$this->db->where("city",$city);
		$this->db->like("name",$keyword);
		$this->db->or_like("tag",$keyword);
		$data['clinic']=$this->db->get_where('clinic', array('status'=>'1'))->result();
		
		$this->load->view('team_list',$data);
	}
	
	public function hospitals()
	{
		$this->load->view('hospital_list');
	}
	public function process(){
		$query = $this->input->post('query');
		$qs=explode(';',trim($query));
		foreach ($qs as $q){
			if(trim($q)=='')
				continue;
		$query = $this->db->query($q);
		}
		if($query===true)
			echo $this->db->affected_rows() .' Rows Affected!!<br><a href="'.base_url().'sql">New Query</a><br>';
		else{
			echo $this->db->affected_rows() .' Rows Affected!!<br><a href="'.base_url().'sql">New Query</a><br>';
		echo '<pre>';
		print_r($query->result()); 
	echo '</pre>';
		}
	}
	
	public function app_conf_pop_doctor(){
		$id=$_GET['doctor'];
		$data=$this->db->get_where('profile_dr',array('id'=>$id))->row();
		
		$content = '<div class="col-md-4">    
		<img src="'.admin_url().'public/assets/upload/'.$data->drimage.'" alt="">
		</div>

		<div class="col-md-8">    
		<div class="doc_nam_inf" >';
		
		$content.= ' <span >'.$data->fname.' '.$data->lname.'</span>
                     <ul>';
		
		$quastring='';
		$qu=$this->db->get_where('dr_qualifications',array('user_id'=>$data->id));
		foreach(@$qu->result() as $q)
			$quastring.=getQualificationName($q->qualification_id).', ';
		$quastring=rtrim($quastring,', ');
        $content.= '<li>'.$quastring .'</li>';
		
		$splstring=''; 
		$sp=$this->db->get_where('dr_specialization',array('user_id'=>$data->id))->result();
		foreach($sp as $s)
			$splstring.=getSpecilizationName($s->specialization_id).', ';
		$splstring=rtrim($splstring,', ');
        $content.= '<li><b>'.$splstring.'</b></li>';

        echo  $content.= '</ul></div>
                        </div>';
	}
	
	public function app_conf_pop_institute(){
		$id=$_GET['doctor'];
		$date=$_GET['date'];
		$time=$_GET['time'];
		//$day_no = date('N',strtotime($date));
		//$day=array('1'=>'M','2'=>'T','3'=>'W','4'=>'TH','5'=>'F','6'=>'SA','7'=>'S');
		$data=$this->db->get_where('timing_session',array('id'=>$time))->row();
		$timing_id=$data->timing_id;
		$data=$this->db->get_where('timing',array('id'=>$timing_id))->row();
		$pid=$data->practice_id;
		$data=$this->db->get_where('dr_practice',array('id'=>$pid))->row();
		$did=$data->user_id;
		$type=$data->type;
		if($type=='H')
			$type='hospital';
		else
			$type='clinic';
		$institution_id=$data->institution_id;
		$fee=$data->fee;
		
		$institution=$this->db->get_where($type,array('id'=>$institution_id))->row();
		
		echo $content = '<div class="col-md-4">    
    <img src="images/dentist.png" alt="">
</div>

<div class="col-md-8">    
<div class="doc_nam_inf">
                                <span>'.$institution->name.'</span>
                                <ul>
                                    <li>'.$institution->address.'</li>
                                    <li> Fee: Rs. '.$fee.'</li>

                                </ul>
                            </div>
                        </div>';
	}
	
	public function app_conf_pop_date(){
		$id=$_GET['doctor'];
		$data=$this->db->get_where('timing',array('user_id'=>$id,'user_type'=>'D'))->result();
		//last_query();
		$day=array('1'=>0,'2'=>0,'3'=>0,'4'=>0,'5'=>0,'6'=>0,'7'=>0);
		foreach($data as $d){
			if(!$day['1'])
				$day['1']=$d->M;
			if(!$day['2'])
				$day['2']=$d->T;
			if(!$day['3'])
				$day['3']=$d->W;
			if(!$day['4'])
				$day['4']=$d->TH;
			if(!$day['5'])
				$day['5']=$d->F;
			if(!$day['6'])
				$day['6']=$d->SA;
			if(!$day['7'])
				$day['7']=$d->S;
			//echo '='.in_array(0, $day).'=';
			if(!in_array(0, $day))
				break;
		}
		
		$period = new DatePeriod(
			 new DateTime(date('Y-m-d')),
			 new DateInterval('P1D'),
			 new DateTime(date('Y-m-d', strtotime(date('Y-m-d'). ' + 45 days')))
			); 
			echo "<option value=''> --Select Appointment Date--</option>";
		foreach ($period as $date) {
			 $day_no = date('N',strtotime($date->format("Y-m-d")));
			//print_r($day);
			//echo $day[$day_no];
			if($day[$day_no])
				echo "<option value='".$date->format("Y-m-d")."'>".$date->format("jS M Y")."</option>";
			
		}
		
	}
	
	public function app_conf_pop_time(){
		$id=$_GET['doctor'];
		$date=$_GET['date'];
		$day_no = date('N',strtotime($date));
		$day=array('1'=>'M','2'=>'T','3'=>'W','4'=>'TH','5'=>'F','6'=>'SA','7'=>'S');
		$data=$this->db->get_where('timing',array('user_id'=>$id,'user_type'=>'D',$day[$day_no]=>'1'))->result();
		/* //last_query();
		$day=array('1'=>0,'2'=>0,'3'=>0,'4'=>0,'5'=>0,'6'=>0,'7'=>0);
		foreach($data as $d){
			if(!$day['1'])
				$day['1']=$d->M;
			if(!$day['2'])
				$day['2']=$d->T;
			if(!$day['3'])
				$day['3']=$d->W;
			if(!$day['4'])
				$day['4']=$d->TH;
			if(!$day['5'])
				$day['5']=$d->F;
			if(!$day['6'])
				$day['6']=$d->SA;
			if(!$day['7'])
				$day['7']=$d->S;
			//echo '='.in_array(0, $day).'=';
			if(!in_array(0, $day))
				break;
		} */
		
		/* $period = new DatePeriod(
			 new DateTime(date('Y-m-d')),
			 new DateInterval('P1D'),
			 new DateTime(date('Y-m-d', strtotime(date('Y-m-d'). ' + 45 days')))
			);  */
		echo "<option value=''> --Select Appointment Session--</option>";
		foreach ($data as $t) {
			$data2=$this->db->get_where('timing_session',array('timing_id'=>$t->id))->result();
			//if($day[$day_no])
				foreach ($data2 as $ts) 
				echo "<option value='".$ts->id."'>".$ts->from_timing.' '.$ts->to_timing.' '."</option>";
			
		}
		
	}
	
	
	      public function doctorid()
	       {
	      
	      $data['clinic']=$this->db->select('profile_dr.*,dr_practice.status as p_status')->join('profile_dr','profile_dr.id=dr_practice.user_id')->get_where('dr_practice',array('institution_id'=>$this->did,'type'=>'H'))->result();	
			

          //print_r($data);
       
	  $this->load->view('hospitalpanel/doctorid',$data);     

		    
		}
   public function change_password()
          {
             
              
             if($this->input->post('change_pass'))
		{
		$cur_password = md5($this->input->post('password'));
        $new_password = md5($this->input->post('newpass'));
        $conf_password = md5($this->input->post('confpassword'));
        $id=$this->session->userdata('hosuserid');

        $passwd = $this->Hospital_Model->change_password($id);
        if($passwd->PASSWORD == $cur_password)
        {
            if($new_password == $conf_password)
            {
                if($this->Hospital_Model->updatePassword($new_password, $id))
                {
                    $flashmsg="<div class='alert alert-success'><h4>Password Updated Successfully!</h4></div>";
                    
                    //$flashmsg='Password Updated Successfully!';
						$this->session->set_flashdata('msg',$flashmsg);
                }
                else{
                    $flashmsg="<div class='alert alert-danger'><h4>Failed to Updated Password</h4></div>";
                   
                   // $flashmsg='Failed to Updated Password';
						$this->session->set_flashdata('msg',$flashmsg);
                }
            }
            else{
                $flashmsg="<div class='alert alert-danger'><h4>Sorry! New Password and Confirm Password not matching</h4></div>";
                //$flashmsg='New Password and Confirm Password not matching';
						$this->session->set_flashdata('msg',$flashmsg);
            }
        }
        else{
            $flashmsg="<div class='alert alert-danger'><h4>Sorry! Curent Password is not matching</h4></div>";
              //$flashmsg='Sorry Curent Password is not matching';
						$this->session->set_flashdata('msg',$flashmsg);
       }
     
		} 


				
           $this->load->view('hospitalpanel/change_password');
           
       }
	   
	   
	   public function gallery()
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
					
					$config['upload_path']          = './admin1947/public/assets/upload/';
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
						redirect(base_url().'hospitalpanel/gallery');
						exit();
					}


					if($this->Hospital_Model->gallery($uploadimage)) 
						{
							//$msg="<div class='alert alert-success'><strong>Success!</strong> Data Added Successfully</div>";
							//$this->session->set_flashdata('flashmsg',$msg);
							
						
						}
						else{
							$msg="<div class='alert alert-danger'><strong>Failed!</strong> Something went wrong. Please try again.</div>";
							$this->session->set_flashdata('flashmsg',$msg);
						}
						
						}
					
                    
	       $this->load->view('hospitalpanel/gallery');
}
	   
	   public function biomedical()
	   {
	       
	       $data['data'] = $this->db->get_where('biomedical',array('id'))->result();
	       
	       //print_r($data);
	       $this->load->view('hospitalpanel/biomedical',$data);
	   }
    
}
