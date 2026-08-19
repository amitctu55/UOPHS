<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Pathlab_Model extends CI_Model {
    function __construct() {
		 //parent::__construct();
		 if($this->session->userdata('pathuserid')){
			 $this->did=$this->db->where('id',$this->session->userdata('pathuserid'))->get('pathlab')->row()->id;
		 }
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
 
 
 
 function change_password($id)
	{
	  
     $query = $this->db->where(['USERID'=>$id])
                    ->get('pathlogin');
       
        return $query->row();
   
	    
	}

  public function updatePassword($new_password, $id)
  {
       $data = array(
      'PASSWORD'=> $new_password
      );
      return $this->db->where('USERID', $id)
                      ->update('pathlogin', $data); 
      
  }
   

    public function updateprofile(){
		$clinicname=$this->input->post('clinicname');
		$cliniccity=$this->input->post('cliniccity');
		$cliniclocality=$this->input->post('cliniclocality');
		$address=$this->input->post('address');
		$udata=array('name'=>$clinicname,'city'=>$cliniccity,'location'=>$cliniclocality,'address'=>$address);
			$this->db->where('id',$this->did)->update('pathlab',$udata);
			redirect('pathlabpanel/profile_clinicproof');
		}
    
    public function profile_clinicproof(){
		
		$uploadimage=$_FILES['images']['name'];
		$extsign = pathinfo($_FILES['images']['name'],PATHINFO_EXTENSION);
		
		if($uploadimage != '') 
		{	
			$rname=rand(1111111,999999999);
			$date=date('Ymd');
			$uploadimage='pathlab_proof_pic_'.$rname.$date.'.'.$extsign;
			$config['upload_path']          = $_SERVER['DOCUMENT_ROOT'].'/admin1947/public/assets/upload/';
					$config['allowed_types'] = 'jpg|png|jpeg|JPG|PNG|JPEG';
					$config['max_size']             = 0;
					$config['quality'] = '50%';
					$config['file_name']  = $uploadimage;
					$this->load->library('upload', $config);
					
					if (! $this->upload->do_upload('images'))
					{
						$error = $this->upload->display_errors();
						echo $flashmsg='<div class="alert alert-danger">
						  <strong>Failed!</strong>'.$error.'
						</div>';
						$this->session->set_flashdata('flashmsg',$flashmsg);
						redirect('pathlabpanel/profile_clinicproof');
						exit();
						
					}else{
						$udata=array('drimage'=>$uploadimage);
						$this->db->where('id',$this->did)->update('pathlab',$udata);
					}
		}
		
		redirect('pathlabpanel/profile_drpic');	
	}
    
    public function profile_drpic(){
		
		$uploadimage=$_FILES['images']['name'];
		$extsign = pathinfo($_FILES['images']['name'],PATHINFO_EXTENSION);
		
		if($uploadimage != '') 
		{	
			$rname=rand(1111111,999999999);
			$date=date('Ymd');
			$uploadimage='pathlab_proof_pic_'.$rname.$date.'.'.$extsign;
			$config['upload_path']          = $_SERVER['DOCUMENT_ROOT'].'/admin1947/public/assets/upload/';
					$config['allowed_types'] = 'jpg|png|jpeg|JPG|PNG|JPEG';
					$config['max_size']             = 0;
					$config['quality'] = '50%';
					$config['file_name']  = $uploadimage;
					$this->load->library('upload', $config);
					
					if (! $this->upload->do_upload('images'))
					{
						$error = $this->upload->display_errors();
						echo $flashmsg='<div class="alert alert-danger">
						  <strong>Failed!</strong>'.$error.'
						</div>';
						$this->session->set_flashdata('flashmsg',$flashmsg);
						redirect('pathlabpanel/profile_drpic');
						exit();
						
					}else{
						$udata=array('id_proof'=>$uploadimage);
						$this->db->where('id',$this->did)->update('pathlab',$udata);
					}
		}
		
		redirect('pathlabpanel/profile_regproof');	
	}
    
    public function profile_regproof(){
		
		$uploadimage=$_FILES['images']['name'];
		$extsign = pathinfo($_FILES['images']['name'],PATHINFO_EXTENSION);
		
		if($uploadimage != '') 
		{	
			$rname=rand(1111111,999999999);
			$date=date('Ymd');
			$uploadimage='pathlab_proof_pic_'.$rname.$date.'.'.$extsign;
			$config['upload_path']          = $_SERVER['DOCUMENT_ROOT'].'/admin1947/public/assets/upload/';
					$config['allowed_types'] = 'jpg|png|jpeg|JPG|PNG|JPEG';
					$config['max_size']             = 0;
					$config['quality'] = '50%';
					$config['file_name']  = $uploadimage;
					$this->load->library('upload', $config);
					
					if (! $this->upload->do_upload('images'))
					{
						$error = $this->upload->display_errors();
						echo $flashmsg='<div class="alert alert-danger">
						  <strong>Failed!</strong>'.$error.'
						</div>';
						$this->session->set_flashdata('flashmsg',$flashmsg);
						redirect('pathlabpanel/profile_clinicproof');
						exit();
						
					}else{
						$udata=array('med_reg_proof'=>$uploadimage);
						$this->db->where('id',$this->did)->update('pathlab',$udata);
					}
		}
		
		redirect('pathlabpanel/dashboard');	
	}

    
    
}

