<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Appointment extends CI_Controller {

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
		 //$this->load->model('Pathlabregmodel');
		 
	}
	 

	 public function doctorappointment()
	 {
	 	//$id=$this->uri->segment(3);
	 	// $keyword    =   $this->input->post('keyword');
       // $this->load->model('doctorregmodel');
       // $data['data']    =   $this->doctorregmodel->search1($keyword);

       $data['data']=$this->db->select('profile_dr.*,hospital.*,appointment.*')->join('profile_dr','profile_dr.id=appointment.doctor_id')->join('hospital','hospital.uid=appointment.institute_id')->get_where('appointment',array('doctor_id'))->result();	

		//print_r($data);
      
        $this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('doctorappointment',$data);
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');
	 
	 

	 }
     
           public function delete()
           {
           	$id=$this->input->get('appointment_id');
           	$this->load->model('doctorregmodel');
           	$this->doctorregmodel->deleterecord($id);
            redirect(base_url().'doctor/appointment/doctorappointment');

           }
  

         public function data()
         {

    	
	     $id=$this->input->get('appointment_id');
	   $data['data']=$this->db->select('profile_dr.*,hospital.*,appointment.*')->join('profile_dr','profile_dr.id=appointment.doctor_id')->join('hospital','hospital.uid=appointment.institute_id')->get_where('appointment', array('appointment_id'=>$id))->result();
	    //print_r($data);
	    
		 $this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('userview',$data);
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');
		
	    
	}
    


  public function hospitalappointment()
  {
          $data['data'] = $this->db->get_where('hospital',array('uid'))->result();
       //$keyword    =   $this->input->post('keyword');
        //$this->load->model('doctorregmodel');
        //$data['data']    =   $this->doctorregmodel->search1($keyword);
  	 // $id=$this->uri->segment(2);
     // $data['data']=$this->db->select('hospital.*,profile_dr.*,appointment.*')->join('hospital','hospital.uid=appointment.institute_id')->join('profile_dr','profile_dr.id=appointment.doctor_id')->get_where('appointment',array('institute_id','institution_type'=>'H'))->result();	
   
    //print_r($data);

  	   $this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('hospitalappointment',$data);
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');
		
         }
          
          public function deletehospital()
          {
              
              $id=$this->input->get('appointment_id');
           	$this->load->model('doctorregmodel');
           	$this->doctorregmodel->deletehospital($id);
            redirect(base_url().'doctor/appointment/hospitalappointment');
              //echo"delete successfully";
              
          }
          
          
           public function todayappointment()
            {
 	
 	    $data['data']=$this->db->select('profile_dr.*,hospital.*,appointment.*')->join('profile_dr','profile_dr.id=appointment.doctor_id')->join('hospital','hospital.uid=appointment.institute_id')->get_where('appointment',array('appointment_date'=>date('Y-m-d')))->result();	
		//print_r($data);

        $this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('todayappointment',$data);
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');
		
         }


      public function user()
	{
	    
	     //$keyword    =   $this->input->post('keyword');
        //$this->load->model('doctorregmodel');
        //$data['data']    =   $this->doctorregmodel->search1($keyword);
	    
	    $data['data']=$this->db->select('profile_dr.*,hospital.*,appointment.*')->join('profile_dr','profile_dr.id=appointment.doctor_id')->join('hospital','hospital.uid=appointment.institute_id')->get_where('appointment', array('appointment_id'))->result();
	   
        //print_r($data);
	   $this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('users',$data);
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');
	    
	}
	
	 public function deletehistory()
          {
              
              $id=$this->input->get('appointment_id');
           	$this->load->model('doctorregmodel');
           	$this->doctorregmodel->deletehistory($id);
            redirect(base_url().'doctor/appointment/user');
              //echo"delete successfully";
              
          }
	
	
	
	
	    public function account()
       {
        $data['hospital'] = $this->db->get_where('hospital',array('uid'))->result();
        $this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('account',$data);
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');

       }

       public function doctordata()
       {
         $id=$this->input->get('uid');
        //$userid=$this->uri->segment(6);
       $data['clinic']=$this->db->select('profile_dr.*,dr_practice.status as p_status')->join('profile_dr','profile_dr.id=dr_practice.user_id')->get_where('dr_practice',array('institution_id'=>$id,'type'=>'H'))->result();	
			
          // $data['data'] = $this->db->select('profile_dr.*,hospital.*,appointment.*')->join('profile_dr','profile_dr.id=appointment.doctor_id')->join('hospital','hospital.uid=appointment.institute_id')->get_where('appointment',array('institute_id'=>$id,'institution_type'=>'H','doctor_id'=>'27'))->num_rows();
			//print_r($data);
        
        $this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('data',$data);
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');
        $this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('data',$data);
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');

        }

              public function calculate()
   {

         if(isset($_POST['submit'])){

       $this->load->model('doctorregmodel');
       $data['data']    =   $this->doctorregmodel->calculate();
        redirect(base_url().'doctor/appointment/totalamount'); 

     }


     }
                
                public function totalamount()
                {   
                    //$id=$this->uri->segment(3);
                    $data['data']= $this->db->get_where('account',array('id'))->result();
                   // print_r($data);
                    
               $this->load->view('inc/topheaderlink');
		       $this->load->view('inc/topheader');
		       $this->load->view('totalamount',$data);
		       $this->load->view('sidebar');
		       $this->load->view('inc/headersetting');
		       $this->load->view('inc/footerlink');
		      $this->load->view('inc/table_footer');
                   
                }
     
             
            
            public function doctorwise()
           {
           $data['doctor'] = $this->db->get_where('profile_dr',array('user_id'))->result();
           //print_r($data);

        $this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('doctorwise',$data);
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');

       }

      public function patient()
        {
    $id=$this->input->get('id');
	   $data['appointment'] = $this->db->get_where('appointment',array('doctor_id'=>$id))->result();
    	//print_r($data);
       $this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('patient',$data);
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');
          }


           
	/*
	public function data()
	{
	     $id=$this->input->get('appointment_id');
	   $data['appointment']=$this->db->get_where('appointment', array('appointment_id'=>$id))->result();
	    //print_r($data);
	    
		 $this->load->view('inc/topheaderlink');
		$this->load->view('inc/topheader');
		$this->load->view('userview',$data);
		$this->load->view('sidebar');
		$this->load->view('inc/headersetting');
		$this->load->view('inc/footerlink');
		$this->load->view('inc/table_footer');
		
	    
	}

*/


}