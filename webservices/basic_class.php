<?php
	
	class BASIC extends REST {
	
		public $data = "";
		
		
		const DB_SERVER_L = "localhost";
		const DB_USER_L = "root";
		const DB_PASSWORD_L = "";
		const DB_L = "sichermart";
	
		const DB_SERVER = 'localhost';
		const DB_USER = 'upchar_live';
		const DB_PASSWORD = 'upchar_live';
		const DB = 'upchar_live';
		
		
		const DB_PREFIX = '';
		
		
		
		
		private $db = NULL;
		private $stripkkey= array('&nbsp;');
	
		public function __construct(){
			parent::__construct();				// Init parent contructor
			$this->dbConnect();					// Initiate Database connection
		}
		
		
		private function dbConnect(){
			$this->db = mysqli_connect(self::DB_SERVER,self::DB_USER,self::DB_PASSWORD);
			if($this->db)
				mysqli_select_db($this->db,self::DB);
			else
				$this->db = mysqli_connect(self::DB_SERVER_L,self::DB_USER_L,self::DB_PASSWORD_L);
			if($this->db)
				mysqli_select_db($this->db,self::DB_L);
		}
		
				
		public function token($length = 32) {

			// Create random token

			$string = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';

			$max = strlen($string) - 1;

			$token = '';

			for ($i = 0; $i < $length; $i++) {

				$token .= $string[mt_rand(0, $max)];

			}	

			return $token;

		}
		
		public function login(){
			
			if($this->get_request_method() != "POST"){
				$this->response('',406);
			}
			extract($_POST);
			$data = $_POST;
		
			@$email               = $_POST['email'];		
		 	@$password            = $_POST['password'];
			
			if(!empty($email) and !empty($password)){
				$sq="SELECT USERID, `MOBILE`,EMAIL,FNAME,LNAME,APPROVED,STATUS FROM userlogin  where (EMAIL='".$email."' OR MOBILE = '".$email."' ) AND  password='".  md5($password)."' ";
				$result = mysqli_query($this->db,$sq);
				$rowno = mysqli_num_rows($result) ;
				
					
				if($rowno > 0){
					$row = mysqli_fetch_assoc($result);
					if($row['STATUS']==0){
						$otp= rand(100000,999999);
						mysqli_query($this->db,"UPDATE userlogin SET OTP='$otp' WHERE USERID='".$row['USERID']."' ");
						//send otp
						$msg="Dear ".$name[0].",
	Thank you for registration, Verification OTP is $otp
	UPCHAR";
						$this->sendsms($msg,$data['mobile']);
						
					$error = array('status' => "Success", "msg" => "User not Verified","otp"=>$otp,"data" => $row);
					$this->response($this->json($error), 200);
					}
					else if($row['STATUS']==2){
					$error = array('status' => "Failed", "msg" => "User Blocked");
					$this->response($this->json($error), 200);
					}
					else if($row['STATUS']==1){
					


					if(!empty($data['mobile_type']) and !empty($data['notification_token'])){
					
							$queryn = "select * FROM user_device WHERE USER_ID='$customer_id' and DEVICE_ID='" .$data['notification_token'] . "' and DEVICE_TYPE= '".$data['mobile_type']."' and `USER_TYPE`='C'";
						
						
							$resultn = mysqli_query($this->db, $queryn) or die('Some thing went wrong  in notification  phase 2');
							$num_rowsn = mysqli_num_rows($resultn);
						
							if ($num_rowsn ==0 ) {
								
								 $form_datan = array(
									'USER_ID' => $customer_id,
									'USER_TYPE' => 'C',
									'DEVICE_ID' => $data['notification_token'],
									'DEVICE_TYPE' => $data['mobile_type'],
									'STATUS' => '1',
									'DATE' => date('Y-m-d') 
								);
								$this->dbRowInsert('user_device', $form_datan);
								
							}
						}
					 $success = array('status' => "Success", "msg" => "Login Successfully","data" => $row);
					 $this->response($this->json($success), 200);
						
					}	
				}
				else {	
					$error = array('status' => "Failed", "msg" => "Invalid username or password");
					$this->response($this->json($error), 200);
				}
				
			}
			else{
			// If invalid inputs "Bad Request" status message and reason
			$error = array('status' => "Failed", "msg" => "Please Provide Input");
			$this->response($this->json($error), 200);
		}
		}
		
		/************************** Sign UP*****************************/
		public function signup(){
			// Cross validation if the request method is POST else it will return "Not Acceptable" status
			if($this->get_request_method() != "POST"){
				$this->response('',406);
			}
			
			$data = $_POST;		
			
			
			if(!empty($data['mobile']) and !empty($data['password'])){
				// Input validations
				
				if($this->checkmobile($data['mobile'])) 
				{
					if(isset($data['email']) && $data['email']!='' )
					if(!$this->checkemail($data['email']))
					{
						$error = array('status' => "Failed", "msg" => "Email Already Exist");
						$this->response($this->json($error), 200);
						die;
					}
					$name = $this->split_name($data['fullname']);
					$otp= rand(100000,999999);
					$insertquery = "INSERT INTO userlogin SET 
					EMAIL= '" . ($data['email']) . "', 
					MOBILE= '" . ($data['mobile']) . "',
					FNAME= '" . ($name[0]) . "', LNAME= '" . ($name[1]) . "',
					PASSWORD= '" . md5($data['password']) . "',
					OTP='$otp' ";
					
					if (mysqli_query($this->db, $insertquery) === TRUE) 
					{
						$customer_id = mysqli_insert_id($this->db);
						$query="select USERID,`MOBILE`,EMAIL,FNAME,LNAME,APPROVED,STATUS from  userlogin where USERID='".$customer_id."'";
						
						$result = mysqli_query($this->db, $query);
						$row = mysqli_fetch_assoc($result);
						$userdata=$row;
						
						//send otp
						$msg="Dear ".$name[0].",
	Thank you for registration, Verification OTP is $otp
	UPCHAR";
						$this->sendsms($msg,$data['mobile']);
						
						if(!empty($data['mobile_type']) and !empty($data['notification_token'])){
					
							$queryn = "select * FROM user_device WHERE USER_ID='$customer_id' and DEVICE_ID='" .$data['notification_token'] . "' and DEVICE_TYPE= '".$data['mobile_type']."' and `USER_TYPE`='C'";
						
						
							$resultn = mysqli_query($this->db, $queryn) or die('Some thing went wron  in noti  phase 2');
							$num_rowsn = mysqli_num_rows($resultn);
						
							if ($num_rowsn ==0 ) {
								
								 $form_datan = array(
									'USER_ID' => $customer_id,
									'USER_TYPE' => 'C',
									'DEVICE_ID' => $data['notification_token'],
									'DEVICE_TYPE' => $data['mobile_type'],
									'STATUS' => '1',
									'DATE' => date('Y-m-d') 
								);
								$this->dbRowInsert('user_device', $form_datan);
								
							}
						}
						
						
						
						$success = array('status' => "Success", "msg" => "Successfully Registered","OTP"=>$otp,"data"=>$userdata);
						$this->response($this->json($success),200);
					} else {
						$error = array('status' => "Failed", "msg" => "Something went wrong");
						$this->response($this->json($error), 200);
					}

					
					
				}
				else 
				{
				$error = array('status' => "Failed", "msg" => "Mobile Already Exist");
				 $this->response($this->json($error), 200);
				}
		
						
			
			}else{
				$error = array('status' => "Failed", "msg" => "Please Provide Mobile and Password");
				$this->response($this->json($error), 200);
			}
		}
	
	public function otpverify(){
		if($this->get_request_method() != "POST"){
				$this->response('',406);
		}
		extract($_POST);
		
		
		$query="select USERID,`MOBILE`,EMAIL,FNAME,LNAME,APPROVED,STATUS from  userlogin where USERID='".$userid."' AND OTP='$otp' ";
		$result = mysqli_query($this->db, $query);
		$rowno = mysqli_num_rows($result) ;
		if($rowno=='1') 
		{
			$query33 = "UPDATE userlogin SET OTP='',STATUS='1' WHERE USERID='$userid'";
			$result33 = mysqli_query($this->db, $query33);
			$row = mysqli_fetch_assoc($result);
			 $success = array('status' => "Success", "msg" => "Verified Successfully","data" => $row);
					 $this->response($this->json($success), 200);
		}else {
			$error = array('status' => "Failed", "msg" => "Invalid OTP");
			$this->response($this->json($error), 200);
		}
	}
	
	private function checkmobile($mobile){
		$query="select `MOBILE` from  userlogin where MOBILE='".$mobile."'";
		$result = mysqli_query($this->db, $query);
		$rowno = mysqli_num_rows($result) ;
		if($rowno=='0') 
		{
			return true;
		}else {
			return false;
		}
	}	
		
	private function checkemail($email){
		$query="select `EMAIL` from  userlogin where EMAIL='".$email."'";
		$result = mysqli_query($this->db, $query);
		$rowno = mysqli_num_rows($result) ;
		if($rowno=='0') 
		{
			return true;
		}else {
			return false;
		}
	}	
		
	private function split_name($name) {
		$name = trim($name);
		$last_name = (strpos($name, ' ') === false) ? '' : preg_replace('#.*\s([\w-]*)$#', '$1', $name);
		$first_name = trim( preg_replace('#'.$last_name.'#', '', $name ) );
		return array($first_name, $last_name);
	}
		
	private function sendsms($msg,$contacts){
		$api_key = '45C6DA05EDD0DC';
		$from = 'UPCHAR';
		$sms_text = rawurlencode($msg);
		$api_url = "http://bulksms.smsroot.com/app/smsapi/index.php?key=".$api_key."&campaign=0&routeid=13&type=text&contacts=".$contacts."&senderid=".$from."&msg=".$sms_text;
		//$response = file_get_contents( $api_url);
		//return  $response;
				// Step 1
$cSession = curl_init(); 
// Step 2
curl_setopt($cSession,CURLOPT_URL,$api_url);
curl_setopt($cSession,CURLOPT_RETURNTRANSFER,true);
curl_setopt($cSession,CURLOPT_HEADER, false); 
// Step 3
 $result=curl_exec($cSession);
// Step 4
curl_close($cSession);
// Step 5
return $result;
	}	
		
	
		/************************** DOCTOR PANEL*****************************/
		public function dr_signup(){
			// Cross validation if the request method is POST else it will return "Not Acceptable" status
			if($this->get_request_method() != "POST"){
				$this->response('',406);
			}
			
			$data = $_POST;		
			
			
			if(!empty($data['mobile']) and !empty($data['password'])){
				// Input validations
				
				if($this->dr_checkmobile($data['mobile'])) 
				{
					if(isset($data['email']) && $data['email']!='' )
					if(!$this->dr_checkemail($data['email']))
					{
						$error = array('status' => "Failed", "msg" => "Email Already Exist");
						$this->response($this->json($error), 200);
						die;
					}
					$name = $this->split_name($data['fullname']);
					$otp= rand(100000,999999);
					$insertquery = "INSERT INTO doctorlogin SET 
					EMAIL= '" . ($data['email']) . "', 
					MOBILE= '" . ($data['mobile']) . "',
					FNAME= '" . ($name[0]) . "', LNAME= '" . ($name[1]) . "',
					PASSWORD= '" . md5($data['password']) . "',
					OTP='$otp' ";
					
					if (mysqli_query($this->db, $insertquery) === TRUE) 
					{
						$customer_id = mysqli_insert_id($this->db);
						
						
						 $form_datann = array('user_id'=>$customer_id,'fname'=>$data['fullname'],'email'=>$data['email'],'mobile'=>$data['mobile'],'verified'=>'0','approved'=>'0','status'=>'0');
						 $this->dbRowInsert('profile_dr', $form_datann);
								
						
						$query="select USERID,`MOBILE`,EMAIL,FNAME,LNAME,APPROVED,STATUS from  doctorlogin where USERID='".$customer_id."'";
						
						$result = mysqli_query($this->db, $query);
						$row = mysqli_fetch_assoc($result);
						$userdata=$row;
						
						//send otp
						$msg="Dear ".$name[0].",
	Thank you for registration, Verification OTP is $otp
	UPCHAR";
						$this->sendsms($msg,$data['mobile']);
						
						if(!empty($data['mobile_type']) and !empty($data['notification_token'])){
					
							$queryn = "select * FROM user_device WHERE USER_ID='$customer_id' and DEVICE_ID='" .$data['notification_token'] . "' and DEVICE_TYPE= '".$data['mobile_type']."' and `USER_TYPE`='D'";
						
						
							$resultn = mysqli_query($this->db, $queryn) or die('Some thing went wron  in noti  phase 2');
							$num_rowsn = mysqli_num_rows($resultn);
						
							if ($num_rowsn ==0 ) {
								
								 $form_datan = array(
									'USER_ID' => $customer_id,
									'USER_TYPE' => 'D',
									'DEVICE_ID' => $data['notification_token'],
									'DEVICE_TYPE' => $data['mobile_type'],
									'STATUS' => '1',
									'DATE' => date('Y-m-d') 
								);
								$this->dbRowInsert('user_device', $form_datan);
								
							}
						}
						
						
						
						$success = array('status' => "Success", "msg" => "Successfully Registered","OTP"=>$otp,"data"=>$userdata);
						$this->response($this->json($success),200);
					} else {
						$error = array('status' => "Failed", "msg" => "Something went wrong");
						$this->response($this->json($error), 200);
					}

					
					
				}
				else 
				{
				$error = array('status' => "Failed", "msg" => "Mobile Already Exist");
				 $this->response($this->json($error), 200);
				}
		
						
			
			}else{
				$error = array('status' => "Failed", "msg" => "Please Provide Mobile and Password");
				$this->response($this->json($error), 200);
			}
		}
			
	private function dr_checkmobile($mobile){
		$query="select `MOBILE` from  doctorlogin where MOBILE='".$mobile."'";
		$result = mysqli_query($this->db, $query);
		$rowno = mysqli_num_rows($result) ;
		if($rowno=='0') 
		{
			return true;
		}else {
			return false;
		}
	}	
		
	private function dr_checkemail($email){
		$query="select `EMAIL` from  doctorlogin where EMAIL='".$email."'";
		$result = mysqli_query($this->db, $query);
		$rowno = mysqli_num_rows($result) ;
		if($rowno=='0') 
		{
			return true;
		}else {
			return false;
		}
	}	
	
	public function dr_otpverify(){
		if($this->get_request_method() != "POST"){
				$this->response('',406);
		}
		extract($_POST);
		
		
		$query="select USERID,`MOBILE`,EMAIL,FNAME,LNAME,APPROVED,STATUS from  doctorlogin where USERID='".$userid."' AND OTP='$otp' ";
		$result = mysqli_query($this->db, $query);
		$rowno = mysqli_num_rows($result) ;
		if($rowno=='1') 
		{
			$query33 = "UPDATE doctorlogin SET OTP='',STATUS='1' WHERE USERID='$userid'";
			$result33 = mysqli_query($this->db, $query33);
			$row = mysqli_fetch_assoc($result);
			 $success = array('status' => "Success", "msg" => "Verified Successfully","data" => $row);
					 $this->response($this->json($success), 200);
		}else {
			$error = array('status' => "Failed", "msg" => "Invalid OTP");
			$this->response($this->json($error), 200);
		}
	}
		
	public function dr_login(){
			
			if($this->get_request_method() != "POST"){
				$this->response('',406);
			}
			extract($_POST);
			$data = $_POST;
		
			@$email               = $_POST['email'];		
		 	@$password            = $_POST['password'];
			
			if(!empty($email) and !empty($password)){
				//$sq="SELECT USERID,`MOBILE`,EMAIL,FNAME,LNAME,APPROVED,STATUS FROM doctorlogin  where (EMAIL='".$email."' OR MOBILE = '".$email."' ) AND  password='".  md5($password)."' ";
				$sq="SELECT doctorlogin.USERID,profile_dr.ID as DRUSERID, doctorlogin.`MOBILE`,doctorlogin.EMAIL,doctorlogin.FNAME,doctorlogin.LNAME,doctorlogin.APPROVED,doctorlogin.STATUS FROM doctorlogin JOIN profile_dr ON profile_dr.user_id=doctorlogin.USERID  where (doctorlogin.EMAIL='".$email."' OR doctorlogin.MOBILE = '".$email."' ) AND  password='".  md5($password)."' ";
				$result = mysqli_query($this->db,$sq);
				$rowno = mysqli_num_rows($result) ;
				
					
				if($rowno > 0){
					$row = mysqli_fetch_assoc($result);
					if($row['STATUS']==0){
						$otp= rand(100000,999999);
						mysqli_query($this->db,"UPDATE doctorlogin SET OTP='$otp' WHERE USERID='".$row['USERID']."' ");
						//send otp
						$msg="Dear ".$name[0].",
	Thank you for registration, Verification OTP is $otp
	UPCHAR";
						$this->sendsms($msg,$data['mobile']);
						
					$error = array('status' => "Success", "msg" => "User not Verified","otp"=>$otp,"data" => $row);
					$this->response($this->json($error), 200);
					}
					else if($row['STATUS']==2){
					$error = array('status' => "Failed", "msg" => "User Blocked");
					$this->response($this->json($error), 200);
					}
					else if($row['STATUS']==1){
					


					if(!empty($data['mobile_type']) and !empty($data['notification_token'])){
					
							$queryn = "select * FROM user_device WHERE USER_ID='$customer_id' and DEVICE_ID='" .$data['notification_token'] . "' and DEVICE_TYPE= '".$data['mobile_type']."' and `USER_TYPE`='D'";
						
						
							$resultn = mysqli_query($this->db, $queryn) or die('Some thing went wron  in noti  phase 2');
							$num_rowsn = mysqli_num_rows($resultn);
						
							if ($num_rowsn ==0 ) {
								
								 $form_datan = array(
									'USER_ID' => $customer_id,
									'USER_TYPE' => 'D',
									'DEVICE_ID' => $data['notification_token'],
									'DEVICE_TYPE' => $data['mobile_type'],
									'STATUS' => '1',
									'DATE' => date('Y-m-d') 
								);
								$this->dbRowInsert('user_device', $form_datan);
								
							}
						}
					 $success = array('status' => "Success", "msg" => "Login Successfully","data" => $row);
					 $this->response($this->json($success), 200);
						
					}	
				}
				else {	
					$error = array('status' => "Failed", "msg" => "Invalid username or password");
					$this->response($this->json($error), 200);
				}
				
			}
			else{
			// If invalid inputs "Bad Request" status message and reason
			$error = array('status' => "Failed", "msg" => "Please Provide Input");
			$this->response($this->json($error), 200);
		}
		}
			
		
		/************************** Hospital PANEL*****************************/
		public function hosp_signup(){
			// Cross validation if the request method is POST else it will return "Not Acceptable" status
			if($this->get_request_method() != "POST"){
				$this->response('',406);
			}
			
			$data = $_POST;		
			
			
			if(!empty($data['mobile']) and !empty($data['password'])){
				// Input validations
				
				if($this->hosp_checkmobile($data['mobile'])) 
				{
					if(isset($data['email']) && $data['email']!='' )
					if(!$this->hosp_checkemail($data['email']))
					{
						$error = array('status' => "Failed", "msg" => "Email Already Exist");
						$this->response($this->json($error), 200);
						die;
					}
					$name = $this->split_name($data['fullname']);
					$otp= rand(100000,999999);
					$insertquery = "INSERT INTO hospitallogin SET 
					EMAIL= '" . ($data['email']) . "', 
					MOBILE= '" . ($data['mobile']) . "',
					FNAME= '" . ($name[0]) . "', LNAME= '" . ($name[1]) . "',
					PASSWORD= '" . md5($data['password']) . "',
					OTP='$otp' ";
					
					if (mysqli_query($this->db, $insertquery) === TRUE) 
					{
						$customer_id = mysqli_insert_id($this->db);
						
						$form_datann=array('name'=>$data['fullname'],'email'=>$data['email'],'mobile'=>$data['mobile'],'uid'=>$customer_id);
				
						// $form_datann = array('user_id'=>$customer_id,'fname'=>$data['fullname'],'email'=>$data['email'],'mobile'=>$data['mobile'],'verified'=>'0','approved'=>'0','status'=>'0');
						 $this->dbRowInsert('hospital', $form_datann);
								
						
						$query="select USERID,`MOBILE`,EMAIL,FNAME,LNAME,APPROVED,STATUS from  hospitallogin where USERID='".$customer_id."'";
						
						$result = mysqli_query($this->db, $query);
						$row = mysqli_fetch_assoc($result);
						$userdata=$row;
						
						//send otp
						$msg="Dear ".$name[0].",
	Thank you for registration, Verification OTP is $otp
	UPCHAR";
						$this->sendsms($msg,$data['mobile']);
						
						if(!empty($data['mobile_type']) and !empty($data['notification_token'])){
					
							$queryn = "select * FROM user_device WHERE USER_ID='$customer_id' and DEVICE_ID='" .$data['notification_token'] . "' and DEVICE_TYPE= '".$data['mobile_type']."' and `USER_TYPE`='D'";
						
						
							$resultn = mysqli_query($this->db, $queryn) or die('Some thing went wron  in noti  phase 2');
							$num_rowsn = mysqli_num_rows($resultn);
						
							if ($num_rowsn ==0 ) {
								
								 $form_datan = array(
									'USER_ID' => $customer_id,
									'USER_TYPE' => 'H',
									'DEVICE_ID' => $data['notification_token'],
									'DEVICE_TYPE' => $data['mobile_type'],
									'STATUS' => '1',
									'DATE' => date('Y-m-d') 
								);
								$this->dbRowInsert('user_device', $form_datan);
								
							}
						}
						
						
						
						$success = array('status' => "Success", "msg" => "Successfully Registered","OTP"=>$otp,"data"=>$userdata);
						$this->response($this->json($success),200);
					} else {
						$error = array('status' => "Failed", "msg" => "Something went wrong");
						$this->response($this->json($error), 200);
					}

					
					
				}
				else 
				{
				$error = array('status' => "Failed", "msg" => "Mobile Already Exist");
				 $this->response($this->json($error), 200);
				}
		
						
			
			}else{
				$error = array('status' => "Failed", "msg" => "Please Provide Mobile and Password");
				$this->response($this->json($error), 200);
			}
		}
			
	private function hosp_checkmobile($mobile){
		$query="select `MOBILE` from  hospitallogin where MOBILE='".$mobile."'";
		$result = mysqli_query($this->db, $query);
		$rowno = mysqli_num_rows($result) ;
		if($rowno=='0') 
		{
			return true;
		}else {
			return false;
		}
	}	
		
	private function hosp_checkemail($email){
		$query="select `EMAIL` from  hospitallogin where EMAIL='".$email."'";
		$result = mysqli_query($this->db, $query);
		$rowno = mysqli_num_rows($result) ;
		if($rowno=='0') 
		{
			return true;
		}else {
			return false;
		}
	}	
	
	public function hosp_otpverify(){
		if($this->get_request_method() != "POST"){
				$this->response('',406);
		}
		extract($_POST);
		
		
		$query="select USERID,`MOBILE`,EMAIL,FNAME,LNAME,APPROVED,STATUS from  hospitallogin where USERID='".$userid."' AND OTP='$otp' ";
		$result = mysqli_query($this->db, $query);
		$rowno = mysqli_num_rows($result) ;
		if($rowno=='1') 
		{
			$query33 = "UPDATE hospitallogin SET OTP='',STATUS='1' WHERE USERID='$userid'";
			$result33 = mysqli_query($this->db, $query33);
			$row = mysqli_fetch_assoc($result);
			 $success = array('status' => "Success", "msg" => "Verified Successfully","data" => $row);
					 $this->response($this->json($success), 200);
		}else {
			$error = array('status' => "Failed", "msg" => "Invalid OTP");
			$this->response($this->json($error), 200);
		}
	}
		
	public function hosp_login(){
			
			if($this->get_request_method() != "POST"){
				$this->response('',406);
			}
			extract($_POST);
			$data = $_POST;
		
			@$email               = $_POST['email'];		
		 	@$password            = $_POST['password'];
			
			if(!empty($email) and !empty($password)){
				//$sq="SELECT USERID,`MOBILE`,EMAIL,FNAME,LNAME,APPROVED,STATUS FROM hospitallogin  where (EMAIL='".$email."' OR MOBILE = '".$email."' ) AND  password='".  md5($password)."' ";
				$sq="SELECT hospitallogin.USERID,hospital.ID as HOSPUSERID, hospitallogin.`MOBILE`,hospitallogin.EMAIL,hospitallogin.FNAME,hospitallogin.LNAME,hospitallogin.APPROVED,hospitallogin.STATUS FROM hospitallogin JOIN hospital ON hospital.uid=hospitallogin.USERID  where (hospitallogin.EMAIL='".$email."' OR hospitallogin.MOBILE = '".$email."' ) AND  password='".  md5($password)."' ";
				$result = mysqli_query($this->db,$sq);
				$rowno = mysqli_num_rows($result) ;
				
					
				if($rowno > 0){
					$row = mysqli_fetch_assoc($result);
					if($row['STATUS']==0){
						$otp= rand(100000,999999);
						mysqli_query($this->db,"UPDATE hospitallogin SET OTP='$otp' WHERE USERID='".$row['USERID']."' ");
						//send otp
						$msg="Dear ".$name[0].",
	Thank you for registration, Verification OTP is $otp
	UPCHAR";
						$this->sendsms($msg,$data['mobile']);
						
					$error = array('status' => "Success", "msg" => "User not Verified","otp"=>$otp,"data" => $row);
					$this->response($this->json($error), 200);
					}
					else if($row['STATUS']==2){
					$error = array('status' => "Failed", "msg" => "User Blocked");
					$this->response($this->json($error), 200);
					}
					else if($row['STATUS']==1){
					


					if(!empty($data['mobile_type']) and !empty($data['notification_token'])){
					
							$queryn = "select * FROM user_device WHERE USER_ID='$customer_id' and DEVICE_ID='" .$data['notification_token'] . "' and DEVICE_TYPE= '".$data['mobile_type']."' and `USER_TYPE`='H'";
						
						
							$resultn = mysqli_query($this->db, $queryn) or die('Some thing went wron  in noti  phase 2');
							$num_rowsn = mysqli_num_rows($resultn);
						
							if ($num_rowsn ==0 ) {
								
								 $form_datan = array(
									'USER_ID' => $customer_id,
									'USER_TYPE' => 'H',
									'DEVICE_ID' => $data['notification_token'],
									'DEVICE_TYPE' => $data['mobile_type'],
									'STATUS' => '1',
									'DATE' => date('Y-m-d') 
								);
								$this->dbRowInsert('user_device', $form_datan);
								
							}
						}
					 $success = array('status' => "Success", "msg" => "Login Successfully","data" => $row);
					 $this->response($this->json($success), 200);
						
					}	
				}
				else {	
					$error = array('status' => "Failed", "msg" => "Invalid username or password");
					$this->response($this->json($error), 200);
				}
				
			}
			else{
			// If invalid inputs "Bad Request" status message and reason
			$error = array('status' => "Failed", "msg" => "Please Provide Input");
			$this->response($this->json($error), 200);
		}
		}
			
		
	
		/************************** CHEMIST PANEL*****************************/
		public function chem_signup(){
			// Cross validation if the request method is POST else it will return "Not Acceptable" status
			if($this->get_request_method() != "POST"){
				$this->response('',406);
			}
			
			$data = $_POST;		
			
			
			if(!empty($data['mobile']) and !empty($data['password'])){
				// Input validations
				
				if($this->chem_checkmobile($data['mobile'])) 
				{
					if(isset($data['email']) && $data['email']!='' )
					if(!$this->chem_checkemail($data['email']))
					{
						$error = array('status' => "Failed", "msg" => "Email Already Exist");
						$this->response($this->json($error), 200);
						die;
					}
					$name = $this->split_name($data['fullname']);
					$otp= rand(100000,999999);
					$insertquery = "INSERT INTO chemistlogin SET 
					EMAIL= '" . ($data['email']) . "', 
					MOBILE= '" . ($data['mobile']) . "',
					FNAME= '" . ($name[0]) . "', LNAME= '" . ($name[1]) . "',
					PASSWORD= '" . md5($data['password']) . "',
					OTP='$otp' ";
					
					if (mysqli_query($this->db, $insertquery) === TRUE) 
					{
						$customer_id = mysqli_insert_id($this->db);
						
						
						 $form_datann = array('user_id'=>$customer_id,'fname'=>$data['fullname'],'email'=>$data['email'],'mobile'=>$data['mobile'],'verified'=>'0','approved'=>'0','status'=>'0');
						 $this->dbRowInsert('profile_chem', $form_datann);
								
						
						$query="select USERID,`MOBILE`,EMAIL,FNAME,LNAME,APPROVED,STATUS from  chemistlogin where USERID='".$customer_id."'";
						
						$result = mysqli_query($this->db, $query);
						$row = mysqli_fetch_assoc($result);
						$userdata=$row;
						
						//send otp
						$msg="Dear ".$name[0].",
	Thank you for registration, Verification OTP is $otp
	UPCHAR";
						$this->sendsms($msg,$data['mobile']);
						
						if(!empty($data['mobile_type']) and !empty($data['notification_token'])){
					
							$queryn = "select * FROM user_device WHERE USER_ID='$customer_id' and DEVICE_ID='" .$data['notification_token'] . "' and DEVICE_TYPE= '".$data['mobile_type']."' and `USER_TYPE`='M'";
						
						
							$resultn = mysqli_query($this->db, $queryn) or die('Some thing went wron  in noti  phase 2');
							$num_rowsn = mysqli_num_rows($resultn);
						
							if ($num_rowsn ==0 ) {
								
								 $form_datan = array(
									'USER_ID' => $customer_id,
									'USER_TYPE' => 'M',
									'DEVICE_ID' => $data['notification_token'],
									'DEVICE_TYPE' => $data['mobile_type'],
									'STATUS' => '1',
									'DATE' => date('Y-m-d') 
								);
								$this->dbRowInsert('user_device', $form_datan);
								
							}
						}
						
						
						
						$success = array('status' => "Success", "msg" => "Successfully Registered","OTP"=>$otp,"data"=>$userdata);
						$this->response($this->json($success),200);
					} else {
						$error = array('status' => "Failed", "msg" => "Something went wrong");
						$this->response($this->json($error), 200);
					}

					
					
				}
				else 
				{
				$error = array('status' => "Failed", "msg" => "Mobile Already Exist");
				 $this->response($this->json($error), 200);
				}
		
						
			
			}else{
				$error = array('status' => "Failed", "msg" => "Please Provide Mobile and Password");
				$this->response($this->json($error), 200);
			}
		}
			
	private function chem_checkmobile($mobile){
		$query="select `MOBILE` from  chemistlogin where MOBILE='".$mobile."'";
		$result = mysqli_query($this->db, $query);
		$rowno = mysqli_num_rows($result) ;
		if($rowno=='0') 
		{
			return true;
		}else {
			return false;
		}
	}	
		
	private function chem_checkemail($email){
		$query="select `EMAIL` from  chemistlogin where EMAIL='".$email."'";
		$result = mysqli_query($this->db, $query);
		$rowno = mysqli_num_rows($result) ;
		if($rowno=='0') 
		{
			return true;
		}else {
			return false;
		}
	}	
	
	public function chem_otpverify(){
		if($this->get_request_method() != "POST"){
				$this->response('',406);
		}
		extract($_POST);
		
		
		$query="select USERID,`MOBILE`,EMAIL,FNAME,LNAME,APPROVED,STATUS from  chemistlogin where USERID='".$userid."' AND OTP='$otp' ";
		$result = mysqli_query($this->db, $query);
		$rowno = mysqli_num_rows($result) ;
		if($rowno=='1') 
		{
			$query33 = "UPDATE chemistlogin SET OTP='',STATUS='1' WHERE USERID='$userid'";
			$result33 = mysqli_query($this->db, $query33);
			$row = mysqli_fetch_assoc($result);
			 $success = array('status' => "Success", "msg" => "Verified Successfully","data" => $row);
					 $this->response($this->json($success), 200);
		}else {
			$error = array('status' => "Failed", "msg" => "Invalid OTP");
			$this->response($this->json($error), 200);
		}
	}
		
	public function chem_login(){
			
			if($this->get_request_method() != "POST"){
				$this->response('',406);
			}
			extract($_POST);
			$data = $_POST;
		
			@$email               = $_POST['email'];		
		 	@$password            = $_POST['password'];
			
			if(!empty($email) and !empty($password)){
				//$sq="SELECT USERID,`MOBILE`,EMAIL,FNAME,LNAME,APPROVED,STATUS FROM chemistlogin  where (EMAIL='".$email."' OR MOBILE = '".$email."' ) AND  password='".  md5($password)."' ";
				$sq="SELECT chemistlogin.USERID,profile_chem.ID as CHEMUSERID, chemistlogin.`MOBILE`,chemistlogin.EMAIL,chemistlogin.FNAME,chemistlogin.LNAME,chemistlogin.APPROVED,chemistlogin.STATUS FROM chemistlogin JOIN profile_chem ON profile_chem.user_id=chemistlogin.USERID  where (chemistlogin.EMAIL='".$email."' OR chemistlogin.MOBILE = '".$email."' ) AND  password='".  md5($password)."' ";
				$result = mysqli_query($this->db,$sq);
				 $rowno = mysqli_num_rows($result) ;
				
					
				if($rowno > 0){
					$row = mysqli_fetch_assoc($result);
					if($row['STATUS']==0){
						$otp= rand(100000,999999);
						mysqli_query($this->db,"UPDATE chemistlogin SET OTP='$otp' WHERE USERID='".$row['USERID']."' ");
						//send otp
						$msg="Dear ".$name[0].",
	Thank you for registration, Verification OTP is $otp
	UPCHAR";
						$this->sendsms($msg,$data['mobile']);
						
					$error = array('status' => "Success", "msg" => "User not Verified","otp"=>$otp,"data" => $row);
					$this->response($this->json($error), 200);
					}
					else if($row['STATUS']==2){
					$error = array('status' => "Failed", "msg" => "User Blocked");
					$this->response($this->json($error), 200);
					}
					else if($row['STATUS']==1){
					


					if(!empty($data['mobile_type']) and !empty($data['notification_token'])){
					
							$queryn = "select * FROM user_device WHERE USER_ID='$customer_id' and DEVICE_ID='" .$data['notification_token'] . "' and DEVICE_TYPE= '".$data['mobile_type']."' and `USER_TYPE`='M'";
						
						
							$resultn = mysqli_query($this->db, $queryn) or die('Some thing went wron  in noti  phase 2');
							$num_rowsn = mysqli_num_rows($resultn);
						
							if ($num_rowsn ==0 ) {
								
								 $form_datan = array(
									'USER_ID' => $customer_id,
									'USER_TYPE' => 'M',
									'DEVICE_ID' => $data['notification_token'],
									'DEVICE_TYPE' => $data['mobile_type'],
									'STATUS' => '1',
									'DATE' => date('Y-m-d') 
								);
								$this->dbRowInsert('user_device', $form_datan);
								
							}
						}
					 $success = array('status' => "Success", "msg" => "Login Successfully","data" => $row);
					 $this->response($this->json($success), 200);
						
					}	
				}
				else {	
					$error = array('status' => "Failed", "msg" => "Invalid username or password");
					$this->response($this->json($error), 200);
				}
				
			}
			else{
			// If invalid inputs "Bad Request" status message and reason
			$error = array('status' => "Failed", "msg" => "Please Provide Input");
			$this->response($this->json($error), 200);
		}
		}
			
		
	
		/************************** PATHOLOGY PANEL*****************************/
		public function path_signup(){
			// Cross validation if the request method is POST else it will return "Not Acceptable" status
			if($this->get_request_method() != "POST"){
				$this->response('',406);
			}
			
			$data = $_POST;		
			
			
			if(!empty($data['mobile']) and !empty($data['password'])){
				// Input validations
				
				if($this->path_checkmobile($data['mobile'])) 
				{
					if(isset($data['email']) && $data['email']!='' )
					if(!$this->path_checkemail($data['email']))
					{
						$error = array('status' => "Failed", "msg" => "Email Already Exist");
						$this->response($this->json($error), 200);
						die;
					}
					$name = $this->split_name($data['fullname']);
					$otp= rand(100000,999999);
					$insertquery = "INSERT INTO pathlogin SET 
					EMAIL= '" . ($data['email']) . "', 
					MOBILE= '" . ($data['mobile']) . "',
					FNAME= '" . ($name[0]) . "', LNAME= '" . ($name[1]) . "',
					PASSWORD= '" . md5($data['password']) . "',
					OTP='$otp' ";
					
					if (mysqli_query($this->db, $insertquery) === TRUE) 
					{
						$customer_id = mysqli_insert_id($this->db);
						
						
						 $form_datann = array('uid'=>$customer_id,'name'=>$data['fullname'],'email'=>$data['email'],'mobile'=>$data['mobile'],'verified'=>'0','approved'=>'0','status'=>'0');
						 $this->dbRowInsert('pathlab', $form_datann);
								
						
						$query="select USERID,`MOBILE`,EMAIL,FNAME,LNAME,APPROVED,STATUS from  pathlogin where USERID='".$customer_id."'";
						
						$result = mysqli_query($this->db, $query);
						$row = mysqli_fetch_assoc($result);
						$userdata=$row;
						
						//send otp
						$msg="Dear ".$name[0].",
	Thank you for registration, Verification OTP is $otp
	UPCHAR";
						$this->sendsms($msg,$data['mobile']);
						
						if(!empty($data['mobile_type']) and !empty($data['notification_token'])){
					
							$queryn = "select * FROM user_device WHERE USER_ID='$customer_id' and DEVICE_ID='" .$data['notification_token'] . "' and DEVICE_TYPE= '".$data['mobile_type']."' and `USER_TYPE`='P'";
						
						
							$resultn = mysqli_query($this->db, $queryn) or die('Some thing went wron  in noti  phase 2');
							$num_rowsn = mysqli_num_rows($resultn);
						
							if ($num_rowsn ==0 ) {
								
								 $form_datan = array(
									'USER_ID' => $customer_id,
									'USER_TYPE' => 'P',
									'DEVICE_ID' => $data['notification_token'],
									'DEVICE_TYPE' => $data['mobile_type'],
									'STATUS' => '1',
									'DATE' => date('Y-m-d') 
								);
								$this->dbRowInsert('user_device', $form_datan);
								
							}
						}
						
						
						
						$success = array('status' => "Success", "msg" => "Successfully Registered","OTP"=>$otp,"data"=>$userdata);
						$this->response($this->json($success),200);
					} else {
						$error = array('status' => "Failed", "msg" => "Something went wrong");
						$this->response($this->json($error), 200);
					}

					
					
				}
				else 
				{
				$error = array('status' => "Failed", "msg" => "Mobile Already Exist");
				 $this->response($this->json($error), 200);
				}
		
						
			
			}else{
				$error = array('status' => "Failed", "msg" => "Please Provide Mobile and Password");
				$this->response($this->json($error), 200);
			}
		}
			
	private function path_checkmobile($mobile){
		$query="select `MOBILE` from  pathlogin where MOBILE='".$mobile."'";
		$result = mysqli_query($this->db, $query);
		$rowno = mysqli_num_rows($result) ;
		if($rowno=='0') 
		{
			return true;
		}else {
			return false;
		}
	}	
		
	private function path_checkemail($email){
		$query="select `EMAIL` from  pathlogin where EMAIL='".$email."'";
		$result = mysqli_query($this->db, $query);
		$rowno = mysqli_num_rows($result) ;
		if($rowno=='0') 
		{
			return true;
		}else {
			return false;
		}
	}	
	
	public function path_otpverify(){
		if($this->get_request_method() != "POST"){
				$this->response('',406);
		}
		extract($_POST);
		
		
		$query="select USERID,`MOBILE`,EMAIL,FNAME,LNAME,APPROVED,STATUS from  pathlogin where USERID='".$userid."' AND OTP='$otp' ";
		$result = mysqli_query($this->db, $query);
		$rowno = mysqli_num_rows($result) ;
		if($rowno=='1') 
		{
			$query33 = "UPDATE pathlogin SET OTP='',STATUS='1' WHERE USERID='$userid'";
			$result33 = mysqli_query($this->db, $query33);
			$row = mysqli_fetch_assoc($result);
			 $success = array('status' => "Success", "msg" => "Verified Successfully","data" => $row);
					 $this->response($this->json($success), 200);
		}else {
			$error = array('status' => "Failed", "msg" => "Invalid OTP");
			$this->response($this->json($error), 200);
		}
	}
		
	public function path_login(){
			
			if($this->get_request_method() != "POST"){
				$this->response('',406);
			}
			extract($_POST);
			$data = $_POST;
		
			@$email               = $_POST['email'];		
		 	@$password            = $_POST['password'];
			
			if(!empty($email) and !empty($password)){
				//$sq="SELECT USERID,`MOBILE`,EMAIL,FNAME,LNAME,APPROVED,STATUS FROM pathlogin  where (EMAIL='".$email."' OR MOBILE = '".$email."' ) AND  password='".  md5($password)."' ";
				$sq="SELECT pathlogin.USERID,pathlab.ID as PATHUSERID, pathlogin.`MOBILE`,pathlogin.EMAIL,pathlogin.FNAME,pathlogin.LNAME,pathlogin.APPROVED,pathlogin.STATUS FROM pathlogin JOIN pathlab ON pathlab.user_id=pathlogin.USERID  where (pathlogin.EMAIL='".$email."' OR pathlogin.MOBILE = '".$email."' ) AND  password='".  md5($password)."' ";
				$result = mysqli_query($this->db,$sq);
				$rowno = mysqli_num_rows($result) ;
				
					
				if($rowno > 0){
					$row = mysqli_fetch_assoc($result);
					if($row['STATUS']==0){
						$otp= rand(100000,999999);
						mysqli_query($this->db,"UPDATE pathlogin SET OTP='$otp' WHERE USERID='".$row['USERID']."' ");
						//send otp
						$msg="Dear ".$name[0].",
	Thank you for registration, Verification OTP is $otp
	UPCHAR";
						$this->sendsms($msg,$data['mobile']);
						
					$error = array('status' => "Success", "msg" => "User not Verified","otp"=>$otp,"data" => $row);
					$this->response($this->json($error), 200);
					}
					else if($row['STATUS']==2){
					$error = array('status' => "Failed", "msg" => "User Blocked");
					$this->response($this->json($error), 200);
					}
					else if($row['STATUS']==1){
					


					if(!empty($data['mobile_type']) and !empty($data['notification_token'])){
					
							$queryn = "select * FROM user_device WHERE USER_ID='$customer_id' and DEVICE_ID='" .$data['notification_token'] . "' and DEVICE_TYPE= '".$data['mobile_type']."' and `USER_TYPE`='P'";
						
						
							$resultn = mysqli_query($this->db, $queryn) or die('Some thing went wron  in noti  phase 2');
							$num_rowsn = mysqli_num_rows($resultn);
						
							if ($num_rowsn ==0 ) {
								
								 $form_datan = array(
									'USER_ID' => $customer_id,
									'USER_TYPE' => 'P',
									'DEVICE_ID' => $data['notification_token'],
									'DEVICE_TYPE' => $data['mobile_type'],
									'STATUS' => '1',
									'DATE' => date('Y-m-d') 
								);
								$this->dbRowInsert('user_device', $form_datan);
								
							}
						}
					 $success = array('status' => "Success", "msg" => "Login Successfully","data" => $row);
					 $this->response($this->json($success), 200);
						
					}	
				}
				else {	
					$error = array('status' => "Failed", "msg" => "Invalid username or password");
					$this->response($this->json($error), 200);
				}
				
			}
			else{
			// If invalid inputs "Bad Request" status message and reason
			$error = array('status' => "Failed", "msg" => "Please Provide Input");
			$this->response($this->json($error), 200);
		}
		}
			
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		public function category(){
			
			if($this->get_request_method() != "GET"){
				$this->response('',406);
			}
			 	
			$sql = mysql_query("SELECT a.category_id,b.name FROM `oc_category` a, oc_category_description b WHERE a.category_id=b.category_id AND  `status`='1' AND `parent_id`=0 ORDER BY a.`sort_order` ASC", $this->db);
			$cat_count =  mysql_num_rows($sql);
				
			if($cat_count > 0){
				$cat = array();
				while($row = mysql_fetch_array($sql,MYSQL_ASSOC)){
						/*$sqlsc = mysql_query("SELECT a.category_id,b.name FROM `oc_category` a, oc_category_description b WHERE a.category_id=b.category_id AND  `status`='1' AND `parent_id`='".$row['category_id']."' ORDER BY a.`sort_order` ASC", $this->db);
						$scat_count =  mysql_num_rows($sqlsc);
						if($scat_count > 0){
							$scat = array();
						while($scrow = mysql_fetch_array($sqlsc,MYSQL_ASSOC)){
							$scat[] = array( 
								'SCID'=>$scrow['category_id'],
								'NAME'=>$scrow['name'] 	 
								);
							
						}
					}*/
					$cat[] = array( 
					'CID'=>$row['category_id'],
					'NAME'=>$row['name'] 
					//'SCAT'=>$scat
					);
				}
					
				$success = array('status' => "Success", "msg" => "Main Categories","parent" => "0","categories" => $cat);
				 	
 			} 
			else
			{
				$success = array('status' => "Success", "msg" => "No Main Categories","parent" => "0","categories" => $cat);
			} 
			
			$this->response($this->json($success), 200);
			$this->response('',204);
			
		}
	
	
	
		
		public function subcategory(){
			
			if($this->get_request_method() != "GET"){
				$this->response('',406);
			}
			@$id = $this->_request['id']; 	
			$sql = mysql_query("SELECT a.category_id,b.name FROM `oc_category` a, oc_category_description b WHERE a.category_id=b.category_id AND  `status`='1' AND `parent_id`=$id ORDER BY a.`sort_order` ASC", $this->db);
			$cat_count =  mysql_num_rows($sql);
				
			if($cat_count > 0){
				$cat = array();
				while($row = mysql_fetch_array($sql,MYSQL_ASSOC)){
					
					$cat[] = array( 
					'SCID'=>$row['category_id'],
					'NAME'=>$row['name'] 
					);
				}
					
				$success = array('status' => "Success", "msg" => "Sub Categories","parent" => $id,"subcategories" => $cat);
				 	
 			} 
			else
			{
				$success = array('status' => "Success", "msg" => "No Sub Categories","parent" => $id,"subcategories" => $cat);
			} 
			
			$this->response($this->json($success), 200);
			$this->response('',204);
			
		}
		
		
		public function productlist(){
			
			if($this->get_request_method() != "GET"){
				$this->response('',406);
			}
			@$id = $this->_request['id']; 	
			$sql = mysql_query("SELECT a.* FROM `oc_product` a, oc_product_to_category b WHERE a.product_id=b.product_id AND  `status`='1' AND b.`category_id`=$id ORDER BY a.`date_added` ASC", $this->db);
			$pro_count =  mysql_num_rows($sql);
				
			if($pro_count > 0){
				$pro = array();
				while($row = mysql_fetch_array($sql,MYSQL_ASSOC)){
					
					$pro[] = $row;
					//array( 
					//'SCID'=>$row['category_id'],
					//'NAME'=>$row['name'] 
					//);
				}
					
				$success = array('status' => "Success", "msg" => "Product List","Category" => $id,"products" => $pro);
				 	
 			} 
			else
			{
				$success = array('status' => "Success", "msg" => "No Product","Category" => $id,"products" => $pro);
			} 
			
			$this->response($this->json($success), 200);
			$this->response('',204);
			
		}
		
		/**************************************************/
		
		//----------------------db handle lib functions -------azad
    
    
    
    function dbRowInsert($table_name, $form_data)
    {
        // retrieve the keys of the array (column titles)
        $fields = array_keys($form_data);
        
        // build the query
        $sql = "INSERT INTO " . $table_name . "
			(`" . implode('`,`', $fields) . "`)
			VALUES('" . implode("','", $form_data) . "')";
        
        // run and return the query result resource
        return mysqli_query($this->db, $sql);
    }
    
    
    // the where clause is left optional in case the user wants to delete every row!
    function dbRowDelete($table_name, $where_clause = '')
    {
        // check for optional where clause
        $whereSQL = '';
        if (!empty($where_clause)) {
            // check to see if the 'where' keyword exists
            if (substr(strtoupper(trim($where_clause)), 0, 5) != 'WHERE') {
                // not found, add keyword
                $whereSQL = " WHERE " . $where_clause;
            } else {
                $whereSQL = " " . trim($where_clause);
            }
        }
        // build the query
        $sql = "DELETE FROM " . $table_name . $whereSQL;
        
        // run and return the query result resource
        return mysqli_query($this->db, $sql);
    }
    
    
    // again where clause is left optional
    function dbRowUpdate($table_name, $form_data, $where_clause = '')
    {
        // check for optional where clause
        $whereSQL = '';
        if (!empty($where_clause)) {
            // check to see if the 'where' keyword exists
            if (substr(strtoupper(trim($where_clause)), 0, 5) != 'WHERE') {
                // not found, add key word
                $whereSQL = " WHERE " . $where_clause;
            } else {
                $whereSQL = " " . trim($where_clause);
            }
        }
        // start the actual SQL statement
        $sql = "UPDATE " . $table_name . " SET ";
        
        // loop and build the column /
        $sets = array();
        foreach ($form_data as $column => $value) {
            $sets[] = "`" . $column . "` = '" . $value . "'";
        }
        $sql .= implode(', ', $sets);
        
        // append the where statement
        $sql .= $whereSQL;
        
        // run and return the query result
        return mysqli_query($this->db, $sql);
    }
    
    function count_all_results($table_name, $where_clause = '')
    {
        // check for optional where clause
        $whereSQL = '';
        if (!empty($where_clause)) {
            // check to see if the 'where' keyword exists
            if (substr(strtoupper(trim($where_clause)), 0, 5) != 'WHERE') {
                // not found, add key word
                $whereSQL = " WHERE " . $where_clause;
            } else {
                $whereSQL = " " . trim($where_clause);
            }
        }
        
        $sql = "select * from  `$table_name` ";
        $sql .= $whereSQL;
        $query    = mysqli_query($this->db, $sql);
        $rowcount = mysqli_num_rows($query);
        return $rowcount;
    }
    
    function resizeImage($newWidth, $targetFile, $originalFile, $newHeight = '')
    {
        
        $info = getimagesize($originalFile);
        $mime = $info['mime'];
        
        switch ($mime) {
            case 'image/jpeg':
                $image_create_func = 'imagecreatefromjpeg';
                $image_save_func   = 'imagejpeg';
                $new_image_ext     = 'jpg';
                break;
            
            case 'image/png':
                $image_create_func = 'imagecreatefrompng';
                $image_save_func   = 'imagepng';
                $new_image_ext     = 'png';
                break;
            
            case 'image/gif':
                $image_create_func = 'imagecreatefromgif';
                $image_save_func   = 'imagegif';
                $new_image_ext     = 'gif';
                break;
            
            default:
                throw new Exception('Unknown image type.');
        }
        
        $img = $image_create_func($originalFile);
        list($width, $height) = getimagesize($originalFile);
        
        if ($newHeight == '')
            $newHeight = ($height / $width) * $newWidth;
        $tmp = imagecreatetruecolor($newWidth, $newHeight);
        imagecopyresampled($tmp, $img, 0, 0, 0, 0, $newWidth, $newHeight, $width, $height);
        
        if (file_exists($targetFile)) {
            unlink($targetFile);
        }
        $image_save_func($tmp, "$targetFile.$new_image_ext");
    }
		
		
		/*
		 *	Encode array into JSON
		*/
		private function json($data){
			if(is_array($data)){
				return json_encode($data);
			}
		}
	
	
}	
?>