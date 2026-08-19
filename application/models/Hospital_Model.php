<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Hospital_Model extends CI_Model {
   
   function __construct() {
		 //parent::__construct();
		 if($this->session->userdata('hosuserid')){
			 $this->did=$this->db->where('uid',$this->session->userdata('hosuserid'))->get('hospital')->row()->id;
		 }
		 
	}
   
   public function addlinkdoctor(){
	   $already=$this->input->post('link');
	   $drid=$this->input->post('link2');
	   
	   if($already==1 && $drid!=''){
		   
		   $result=$this->db->where(array('type'=>'H','institution_id'=>$this->did,'user_id'=>$drid))->get('dr_practice');
			$count=$result->num_rows();
			if($count){
				$practiceid=$result->row()->id;
				
				
			}else{
				$udata=array('institution_id'=>$this->did,'user_id'=>$drid,'type'=>'H','status'=>'0');
				$this->db->insert('dr_practice',$udata);
				$practiceid=$this->db->insert_id();
				//email to dr to approve link 
				$data=$this->db->get_where('profile_dr',array('uid'=>$drid))->row();
				$this->load->library('azad_lib');
		 	$body="Request from  abcd hospital for profile approval   ".base_url().'home/securepapproval/'.mybase64_encode($practiceid).'/'.mybase64_encode($drid).'';
			$this->azad_lib->sendMail($data->email,'Request from  abcd hospital for profile approval',$body);
				
			}
	   }else{
		   
		   $email=strtolower(trim($this->input->post('email')));
		
		$mobile=trim($this->input->post('mobile'));
		$countemail=$this->db->where('EMAIL',$email)->count_all_results('hospitallogin');
		$countmobile=$this->db->where('MOBILE',$mobile)->count_all_results('hospitallogin');
		if($countemail > 0  && $email!='')
		{
			$response=array('status'=>'failed','msg'=>'Email Id Already Registered, Reset Your Password if You Forgotten ! ');
		}
		else if($countmobile > 0 && $mobile!='')
		{
			$response=array('status'=>'failed','msg'=>'Mobile No. Already Registered, Reset Your Password if You Forgotten ! ');
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
			}
		}
	   }
   }
   
   
    public function patient()
   {
     $id=$this->uri->segment(2);
   	$data=array('payment_status'=>'DONE');
     
   	$this->db->where('appointment_id',$id)->update('appointment',$data);
  
   //redirect('hospitalpanel/patient');

   }
   
   	public function updateprofile(){
		$clinicname=$this->input->post('clinicname');
		$cliniccity=$this->input->post('cliniccity');
		$cliniclocality=$this->input->post('cliniclocality');
		
		$udata=array('name'=>$clinicname,'city'=>$cliniccity,'location'=>$cliniclocality);
			$this->db->where('id',$this->did)->update('hospital',$udata);
			redirect('hospitalpanel/profile_clinicproof');
		}
		
	
	public function profile_clinicproof(){
		
		$uploadimage=$_FILES['images']['name'];
		$extsign = pathinfo($_FILES['images']['name'],PATHINFO_EXTENSION);
		
		if($uploadimage != '') 
		{	
			$rname=rand(1111111,999999999);
			$date=date('Ymd');
			$uploadimage='hospital_proof_pic_'.$rname.$date.'.'.$extsign;
			$config['upload_path']          = $_SERVER['DOCUMENT_ROOT'].'/admin1947/public/assets/upload/';
					$config['allowed_types'] = 'jpg|png|jpeg|JPG|PNG|JPEG';
					$config['max_size']             = 0;
					$config['quality'] = '50%';
					$config['file_name']  = $uploadimage;
					$this->load->library('upload', $config);
					
					if ( ! $this->upload->do_upload('images'))
					{
						$error = $this->upload->display_errors();
						echo $flashmsg='<div class="alert alert-danger">
						  <strong>Failed!</strong>'.$error.'
						</div>';
						$this->session->set_flashdata('flashmsg',$flashmsg);
						redirect('hospitalpanel/profile_clinicproof');
						exit();
						
					}else{
						$udata=array('med_reg_proof'=>$uploadimage);
						$this->db->where('id',$this->did)->update('hospital',$udata);
					}
		}
		
		redirect('hospitalpanel/profile_disppic');	
	}
	
	public function profile_disppic(){
		//print_r($_FILES);
		//print_r($_POST);
		$uploadimage=$_FILES['images']['name'];
		$extsign = pathinfo($_FILES['images']['name'],PATHINFO_EXTENSION);
		
		if($uploadimage != '') 
		{	
			$rname=rand(1111111,999999999);
			$date=date('Y-m-d');
			$uploadimage='disp_profile_pic_'.$rname.$date.'.'.$extsign;
			$config['upload_path']          = $_SERVER['DOCUMENT_ROOT'].'/admin1947/public/assets/upload/';
					$config['allowed_types'] = 'jpg|png|jpeg|JPG|PNG|JPEG';
					$config['max_size']             = 0;
					$config['quality'] = '50%';
					$config['file_name']  = $uploadimage;
					$this->load->library('upload', $config);
					
					if ( ! $this->upload->do_upload('images'))
					{
						$error = $this->upload->display_errors();
						echo $flashmsg='<div class="alert alert-danger">
						  <strong>Failed!</strong>'.$error.'
						</div>';
						$this->session->set_flashdata('flashmsg',$flashmsg);
						redirect('hospitalpanel/profile_disppic');
						exit();
						
					}else{
						$udata=array('drimage'=>$uploadimage);
						$this->db->where('id',$this->did)->update('hospital',$udata);
					}
		}
		redirect('hospitalpanel/profile_maplocation');	
	}
	
	public function profile_maplocation(){
		$udata=array('email'=>$this->input->post('email'),'mobile'=>$this->input->post('mobile'),'address'=>$this->input->post('address'));
		$this->db->where('id',($this->did))->update('hospital',$udata);
		
		
		redirect('hospitalpanel/profile_clinic_timing');	
	}
	
	public function profile_clinic_timing(){
		
		$mon = $this->input->post('mon');
		$tue = $this->input->post('tue');
		$wed = $this->input->post('wed');
		$thu = $this->input->post('thu');
		$fri = $this->input->post('fri');
		$sat = $this->input->post('sat');
		$sun = $this->input->post('sun');
			
		$from = $this->input->post('fromtime');
		$to = $this->input->post('totime');
		$hiddenday = $this->input->post('hiddenday');
		
		$this->db->query("DELETE `timing`,`timing_session` FROM `timing` INNER JOIN `timing_session`  ON timing_session.timing_id=timing.id WHERE user_id='".$this->did."' AND user_type='H';");
		for($key2=0;$key2<$hiddenday;$key2++){
			$mon[$key2]=(@$mon[$key2])? 1 : 0;
			$tue[$key2]=(@$tue[$key2])? 1 : 0;
			$wed[$key2]=(@$wed[$key2])? 1 : 0;
			$thu[$key2]=(@$thu[$key2])? 1 : 0;
			$fri[$key2]=(@$fri[$key2])? 1 : 0;
			$sat[$key2]=(@$sat[$key2])? 1 : 0;
			$sun[$key2]=(@$sun[$key2])? 1 : 0;
			
			if(!$mon[$key2] && !$tue[$key2] && !$wed[$key2] && !$thu[$key2] && !$fri[$key2] && !$sat[$key2] && !$sun[$key2] )
				continue;
			
			$timingdata=array('user_id'=>$this->did,'user_type'=>'H','M'=>$mon[$key2],'T'=>$tue[$key2],	'W'=>$wed[$key2],'TH'=>$thu[$key2],	'F'=>$fri[$key2],	'SA'=>$sat[$key2],	'S'=>$sun[$key2],	'status'=>'1');
			$this->db->insert('timing',$timingdata);
			
			$sessions=$from[$key2];
			$tid= $this->db->insert_id();
			foreach($sessions as $key3=>$value){
				if($from[$key2][$key3]=='' || $from[$key2][$key3]=='')
					continue;
				$sessiondata = array('timing_id'=>$tid,'from_timing'=>$from[$key2][$key3],'to_timing'=>$to[$key2][$key3],'status'=>'1');
				$this->db->insert('timing_session',$sessiondata);
						
			}
				
		}
		redirect('hospital-dashboard');	
			
	}
	

   
	public function profile_step1(){
		$udata=array('fname'=>$this->input->post('name'),'gender'=>$this->input->post('gender'),'city'=>$this->input->post('city'));
		$this->db->where('user_id',$this->did)->update('profile_dr',$udata);
		
		$this->db->delete('dr_specialization',array('user_id'=>$this->did));
		$specialisation = $this->input->post('specialisation');
			foreach($specialisation as $s){
				$spldata[]=array('user_id'=>$this->did,'specialization_id'=>$s);
			}
		$this->db->insert_batch('dr_specialization',$spldata);
			
		redirect('profile_step2');
		
	}
	
	public function profile_step2(){
		$udata=array('regd_no'=>$this->input->post('regno'),'regd_council'=>$this->input->post('council'),'regd_year'=>$this->input->post('year'));
		$this->db->where('user_id',$this->did)->update('profile_dr',$udata);
		
		
		redirect('profile_step3');
		
	}
	
	public function profile_step3(){
		$udata=array('college'=>$this->input->post('college'),'exp'=>$this->input->post('exp'),'year'=>$this->input->post('year'));
		$this->db->where('user_id',$this->did)->update('profile_dr',$udata);
		
		$this->db->delete('dr_qualifications',array('user_id'=>$this->did));
		$qualification =$this->input->post('qualification');
		foreach($qualification as $q){
			$qualdata[]=array('user_id'=>$this->did,'qualification_id'=>$q);
		}
		$this->db->insert_batch('dr_qualifications',$qualdata);
			
		redirect('profile_drpic');
		
	}
	
	public function profile_drpic(){
		//print_r($_FILES);
		//print_r($_POST);
		$uploadimage=$_FILES['images']['name'];
		$extsign = pathinfo($_FILES['images']['name'],PATHINFO_EXTENSION);
		
		if($uploadimage != '') 
		{	
			$rname=rand(1111111,999999999);
			$date=date('Y-m-d');
			$uploadimage='dr_profile_pic_'.$rname.$date.'.'.$extsign;
			$config['upload_path']          = $_SERVER['DOCUMENT_ROOT'].'/admin1947/public/assets/upload/';
					$config['allowed_types'] = 'jpg|png|jpeg|JPG|PNG|JPEG';
					$config['max_size']             = 0;
					$config['quality'] = '50%';
					$config['file_name']  = $uploadimage;
					$this->load->library('upload', $config);
					
					if ( ! $this->upload->do_upload('images'))
					{
						$error = $this->upload->display_errors();
						echo $flashmsg='<div class="alert alert-danger">
						  <strong>Failed!</strong>'.$error.'
						</div>';
						$this->session->set_flashdata('flashmsg',$flashmsg);
						redirect('profile_drpic');
						exit();
						
					}else{
						$udata=array('drimage'=>$uploadimage);
						$this->db->where('user_id',$this->did)->update('profile_dr',$udata);
					}
		}
		redirect('profile_idproof');	
	}
	
	public function profile_idproof(){
		//$udata=array('clinic_type'=>$this->input->post('practicetype'));
		//$this->db->where('user_id',$this->did)->update('profile_dr',$udata);
		
		redirect('profile_regproof');	
	}
	public function profile_regproof(){
		//$udata=array('clinic_type'=>$this->input->post('practicetype'));
		//$this->db->where('user_id',$this->did)->update('profile_dr',$udata);
		
		redirect('managepractice');	
	}
	public function profile_step4(){
		$udata=array('clinic_type'=>$this->input->post('practicetype'));
		$this->db->where('user_id',$this->did)->update('profile_dr',$udata);
		
		redirect('profile_step5');
		
	}
	
	
	
	
	public function addpractice(){
		$clinicname=$this->input->post('clinicname');
		$cliniccity=$this->input->post('cliniccity');
		$cliniclocality=$this->input->post('cliniclocality');
		//search cilinic & suggest if any else save
		$this->db->like('name',$clinicname);
		//$this->db->where('city',$cliniccity);
		//$this->db->where('location',$cliniclocality);
		$clinic = $this->db->get('clinic');
		$suggestedclinic=$clinic->result();
		
		$this->db->like('name',$clinicname);
		//$this->db->where('city',$cliniccity);
		//$this->db->where('location',$cliniclocality);
		$hosp = $this->db->get('hospital');
		$suggestedhospital=$hosp->result();
		
		$countguggestedclinic=$clinic->num_rows();
		$countguggestedhospital=$hosp->num_rows();
		if($countguggestedclinic + $countguggestedhospital){
			return array('C'=>$suggestedclinic,'H'=>$suggestedhospital);
		}else{
			//insert or update on hinnden clinic id value
			//$this->db->where('user_id',$this->did)->update('profile_dr',$udata);
			
			//$udata=array('name'=>$clinicname,'city'=>$cliniccity,'location'=>$cliniclocality);
			//$this->db->insert('clinic',$udata);
			//$clinicid = $this->db->insert_id();
			//$udata2=array('clinic_id'=>$clinicid,'did'=>$this->did,'status'=>'P','date'=>date('Y-m-d H:i:s'));
			//$this->db->insert('clinic_claimed',$udata2);
			
			//redirect('progress_profile2');
			return array();
		}
		
		
	}
	
	public function linkpractice(){
		$hospclinicid=$this->input->post('hospclinicid');
		$exp=explode('-',$hospclinicid);
		$type=$exp[0];
		$institution_id=$exp[1];
		$result=$this->db->where(array('type'=>$type,'institution_id'=>$institution_id,'user_id'=>$this->did))->get('dr_practice');
		$count=$result->num_rows();
		if($count){
			$practiceid=$result->row()->id;
		}else{
			$udata=array('institution_id'=>$institution_id,'user_id'=>$this->did,'type'=>$type);
			$this->db->insert('dr_practice',$udata);
			$practiceid=$this->db->insert_id();
		}
		//$udata=array('clinic_type'=>$this->input->post('practicetype'));
		//$this->db->where('user_id',$this->did)->update('profile_dr',$udata);
		//if already ret id else add and ret id
		
		redirect('profile_consultant_fee/'.mybase64_encode($practiceid));
		
	}
	
	public function profile_consultant_fee(){
		$drid=mybase64_decode($this->uri->segment(3));//check if loged in 
		$fee = $this->input->post('fee');
		$practicetype = $this->input->post('objective');
		$mon = $this->input->post('mon');
		$tue = $this->input->post('tue');
		$wed = $this->input->post('wed');
		$thu = $this->input->post('thu');
		$fri = $this->input->post('fri');
		$sat = $this->input->post('sat');
		$sun = $this->input->post('sun');
			
		$from = $this->input->post('fromtime');
		$to = $this->input->post('totime');
		$max_patient = $this->input->post('max_patient');
		$hiddenday = $this->input->post('hiddenday');
		
		$pid=$this->db->where(array('type'=>'H','user_id'=>$drid,'institution_id'=>$this->did))->get('dr_practice')->row()->id;;
		
		$this->db->where(array('type'=>'H','user_id'=>$drid,'institution_id'=>$this->did))->set('fee',$fee)->update('dr_practice');
		//$this->db->query("DELETE `timing`,`timing_session` FROM `timing` INNER JOIN `timing_session`  ON timing_session.timing_id=timing.id WHERE user_id='".$drid."' AND user_type='D' AND institution_id='".$this->did."';");
		if($pid)
		$this->db->query("DELETE `timing`,`timing_session` FROM `timing` INNER JOIN `timing_session`  ON timing_session.timing_id=timing.id WHERE user_id='".$drid."' AND practice_id='".$pid."' ;");
		for($key2=0;$key2<$hiddenday;$key2++){
			$mon[$key2]=(@$mon[$key2])? 1 : 0;
			$tue[$key2]=(@$tue[$key2])? 1 : 0;
			$wed[$key2]=(@$wed[$key2])? 1 : 0;
			$thu[$key2]=(@$thu[$key2])? 1 : 0;
			$fri[$key2]=(@$fri[$key2])? 1 : 0;
			$sat[$key2]=(@$sat[$key2])? 1 : 0;
			$sun[$key2]=(@$sun[$key2])? 1 : 0;
			
			if(!$mon[$key2] && !$tue[$key2] && !$wed[$key2] && !$thu[$key2] && !$fri[$key2] && !$sat[$key2] && !$sun[$key2] )
				continue;
			
			$timingdata=array('practice_id'=>$pid,'user_id'=>$drid,'M'=>$mon[$key2],'T'=>$tue[$key2],	'W'=>$wed[$key2],'TH'=>$thu[$key2],	'F'=>$fri[$key2],	'SA'=>$sat[$key2],	'S'=>$sun[$key2],	'status'=>'1');
			$this->db->insert('timing',$timingdata);
			
			$sessions=$from[$key2];
			$tid= $this->db->insert_id();
			foreach($sessions as $key3=>$value){
				if($from[$key2][$key3]=='' || $from[$key2][$key3]=='')
					continue;
				$sessiondata = array('timing_id'=>$tid,'from_timing'=>$from[$key2][$key3],'to_timing'=>$to[$key2][$key3],'max_patient'=>$max_patient[$key2][$key3],'status'=>'1');
				$this->db->insert('timing_session',$sessiondata);
						
			}
				
		}
		
		redirect('hospitalpanel/managedoctor');	
	}
	
	public function profile_step6(){
		//$udata=array('clinic_type'=>$this->input->post('practicetype'));
		//$this->db->where('user_id',$this->did)->update('profile_dr',$udata);
		
		redirect('progress_profile2');
		
	}
	
	
	
	public function updateclinic(){
		$clinicid=$this->uri->segment(2);
		$udata=array('name'=>$this->input->post('clinicname'),'city'=>$this->input->post('cliniccity'),'location'=>$this->input->post('cliniclocality'));
		$this->db->where('id',mybase64_decode($clinicid))->update('clinic',$udata);
		
	
		redirect('profile_clinicproof/'.($clinicid));	
		//redirect('profile_clinic_timing/'.($clinicid));	
	}
	
	function change_password($id)
	{
	  
     $query = $this->db->where(['USERID'=>$id])
                    ->get('hospitallogin');
       
        return $query->row();
   
	    
	}

  public function updatePassword($new_password, $id)
  {
       $data = array(
      'PASSWORD'=> $new_password
      );
      return $this->db->where('USERID', $id)
                      ->update('hospitallogin', $data); 
      
  }
	 public function gallery($image)
	    {
	        $date=date('Y-m-d h:i:s');
	        $long=$this->input->post('long');
			$shot=$this->input->post('shot');
			//$id=base64_decode($this->input->post('id'));

           //$image=$this->input->post('uploadimage')
			$data=array('shot_description'=>$shot,'long_description'=>$long,'image'=>$image,'date'=>$date,'uid'=>$this->did);
			
			$qq=$this->db->insert('hospitalgallery',$data);
           return $qq;
           $drid= $this->db->insert_id();
		}
	
	
   }