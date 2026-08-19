<?php

	//error_reporting(1);
	require_once("Rest.inc.php");
	require_once("basic_class.php");
	//define('API_ACCESS_KEY','AIzaSyBSwuNvaBU71tGTvStenGdA2xWe2hnLKRM');
	
	class API extends REST {
	
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
			$func = strtolower(trim(str_replace("/","",$_REQUEST['rquest'])));
			$module=explode('_',$func);
			if($module[0]=='dr' )
			{	if($_POST['API_ACCESS_KEY']!='mcaswati02' )
				{
					$success = array('error'=>array('msg'=>'Unauthorized access'));
					$this->response($this->json($success), 403);	
					die;
				}
			}else if($module[0]=='chem' )
			{	if($_POST['API_ACCESS_KEY']!='mcaswati02' )
				{
					$success = array('error'=>array('msg'=>'Unauthorized access'));
					$this->response($this->json($success), 403);	
					die;
				}
			}else if($module[0]=='path' )
			{	if($_POST['API_ACCESS_KEY']!='mcaswati02' )
				{
					$success = array('error'=>array('msg'=>'Unauthorized access'));
					$this->response($this->json($success), 403);	
					die;
				}
			}else if($module[0]=='hosp' )
			{	if($_POST['API_ACCESS_KEY']!='mcaswati02' )
				{
					$success = array('error'=>array('msg'=>'Unauthorized access'));
					$this->response($this->json($success), 403);	
					die;
				}
			}else if($_POST['API_ACCESS_KEY']!='azadhussain16')
			{
				$success = array('error'=>array('msg'=>'Unauthorized access'));
				$this->response($this->json($success), 403);	
				die;
			}
			
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
		
		
		public function processApi(){
			
			$func = strtolower(trim(str_replace("/","",$_REQUEST['rquest'])));
			if((int)method_exists($this,$func) > 0)
				$this->$func();
			else
			if((int)method_exists('BASIC',$func) > 0){
			$basic=new BASIC;
			$basic->$func();
			}
			else
				
				$this->response('',404);				// If the method not exist with in this class, response would be "Page not found".
		}
		
		
		
		/************************** Social Sign UP *****************************/
		private function SocialLogin(){
			// Cross validation if the request method is POST else it will return "Not Acceptable" status
			if($this->get_request_method() != "POST"){
				$this->response('',406);
			}
			
			$Fname    = $_POST['Fname'];		
			$Lname    = $_POST['Lname'];
			$email    = $_POST['email'];
			$password = $_POST['socialuniqeid'];
			@$mobile_type         = $_POST['mobile_type'];		
			@$notification_token  = $_POST['notification_token'];
			$DATES    = date("Y-m-d");
			if(!empty($email) and !empty($password)){
				if(filter_var($email, FILTER_VALIDATE_EMAIL)){
					// Input validations
					$checkquery = mysql_query("SELECT IFNULL(a.ID,'@') as ID,
						IFNULL(a.F_NAME,'@') as F_name,
						IFNULL(a.L_NAME,'@') as L_NAME,
						IFNULL(a.MARITAL_STATUS,'@') as MARITAL_STATUS,
						IFNULL(a.GENDER,'@') as GENDER,
						IFNULL(a.DOB,'@') as DOB,
						IFNULL(a.ADDRESS,'@') as ADDRESS,
						IFNULL(a.EMAIL,'@') as EMAIL,
						IFNULL(a.PHONE,'@') as PHONE,
						IFNULL(a.MOBILE,'@') as MOBILE,
						IFNULL(a.ALTERNATE_MOBILE,'@') as ALTERNATE_MOBILE,
						IFNULL(a.CITY,'@') as CITY,
						IFNULL(a.STATE,'@') as STATE,
						IFNULL(a.COUNTRY,'@') as COUNTRY,
						IFNULL(a.ZIPCODE,'@') as ZIPCODE,
						IFNULL(a.EDUCATION,'@') as EDUCATION,
						IFNULL(a.OCCUPATION,'@') as OCCUPATION,
						IFNULL(a.INDUSTRY,'@') as INDUSTRY,
						IFNULL(a.INCOME_RANGE,'@') as INCOME_RANGE,
						IFNULL(a.COMPANY_NAME,'@') as COMPANY_NAME,
						IFNULL(a.JOB_TITLE,'@') as JOB_TITLE,
						IFNULL(a.S_FNAME,'@') as S_FNAME,
						IFNULL(a.S_LNAME,'@') as S_LNAME,
						IFNULL(a.S_ADDRESS,'@') as S_ADDRESS,
						IFNULL(a.S_PHONE,'@') as S_PHONE,
						IFNULL(a.S_MOBILE,'@') as S_MOBILE,
						IFNULL(a.S_CITY,'@') as S_CITY,
						IFNULL(a.S_STATE,'@') as S_STATE,
						IFNULL(a.S_COUNTRY,'@') as S_COUNTRY,
						IFNULL(a.S_ZIPCODE,'@') as S_ZIPCODE,
						IFNULL(a.STATUS,'@') as STATUS,
						IFNULL(a.DATE,'@') as DATE,
						IFNULL(b.USER_ID,'@') as USER_ID,
						IFNULL(b.USERNAME,'@') as USERNAME,
						IFNULL(b.PASSWORD,'@') as PASSWORD,
						IFNULL(b.forgetkey,'@') as forgetkey,
						IFNULL(c.id,'@') as id,
						IFNULL(c.user_id,'@') as user_id,
						IFNULL(c.name,'@') as name,
						IFNULL(c.address,'@') as address,
						IFNULL(c.city,'@') as city,
						IFNULL(c.state,'@') as state,
						IFNULL(c.pin,'@') as pin,
						IFNULL(c.contact,'@') as contact,
						IFNULL(c.default_address,'@') as default_address,
						IFNULL(c.status,'@') as status,
						IFNULL(c.date,'@') as date FROM `admin_user` a Left join `admin_user_login` b on a.ID= b.USER_ID   Left join `admin_user_address` c on a.ID=c.user_id  where EMAIL='".$email."' and social_uniqe_id='".$password."'");
												
					$rowno      =  mysql_num_rows($checkquery);
						
					if($rowno == '0'){
						$sql        = mysql_query("insert into  `admin_user` (F_NAME,L_NAME,EMAIL,social_uniqe_id,STATUS,DATE) values('$Fname','$Lname','$email','$password','1','$DATES')") or die(mysql_error());	
						$intids     = mysql_insert_id();
						$new_insert = mysql_query("insert into `admin_user_login` (USER_ID,USERNAME,forgetkey,STATUS,DATE,notification_token,mobile_type) values('$intids','$email','','','$DATES','$notification_token','$mobile_type')");				
					if($new_insert){
					$checkquery1 = mysql_query("SELECT IFNULL(a.ID,'@') as ID,
						IFNULL(a.F_NAME,'@') as F_name,
						IFNULL(a.L_NAME,'@') as L_NAME,
						IFNULL(a.MARITAL_STATUS,'@') as MARITAL_STATUS,
						IFNULL(a.GENDER,'@') as GENDER,
						IFNULL(a.DOB,'@') as DOB,
						IFNULL(a.ADDRESS,'@') as ADDRESS,
						IFNULL(a.EMAIL,'@') as EMAIL,
						IFNULL(a.PHONE,'@') as PHONE,
						IFNULL(a.MOBILE,'@') as MOBILE,
						IFNULL(a.ALTERNATE_MOBILE,'@') as ALTERNATE_MOBILE,
						IFNULL(a.CITY,'@') as CITY,
						IFNULL(a.STATE,'@') as STATE,
						IFNULL(a.COUNTRY,'@') as COUNTRY,
						IFNULL(a.ZIPCODE,'@') as ZIPCODE,
						IFNULL(a.EDUCATION,'@') as EDUCATION,
						IFNULL(a.OCCUPATION,'@') as OCCUPATION,
						IFNULL(a.INDUSTRY,'@') as INDUSTRY,
						IFNULL(a.INCOME_RANGE,'@') as INCOME_RANGE,
						IFNULL(a.COMPANY_NAME,'@') as COMPANY_NAME,
						IFNULL(a.JOB_TITLE,'@') as JOB_TITLE,
						IFNULL(a.S_FNAME,'@') as S_FNAME,
						IFNULL(a.S_LNAME,'@') as S_LNAME,
						IFNULL(a.S_ADDRESS,'@') as S_ADDRESS,
						IFNULL(a.S_PHONE,'@') as S_PHONE,
						IFNULL(a.S_MOBILE,'@') as S_MOBILE,
						IFNULL(a.S_CITY,'@') as S_CITY,
						IFNULL(a.S_STATE,'@') as S_STATE,
						IFNULL(a.S_COUNTRY,'@') as S_COUNTRY,
						IFNULL(a.S_ZIPCODE,'@') as S_ZIPCODE,
						IFNULL(a.STATUS,'@') as STATUS,
						IFNULL(a.DATE,'@') as DATE,
						IFNULL(b.USER_ID,'@') as USER_ID,
						IFNULL(b.USERNAME,'@') as USERNAME,
						IFNULL(b.PASSWORD,'@') as PASSWORD,
						IFNULL(b.forgetkey,'@') as forgetkey,
						IFNULL(c.id,'@') as id,
						IFNULL(c.user_id,'@') as user_id,
						IFNULL(c.name,'@') as name,
						IFNULL(c.address,'@') as address,
						IFNULL(c.city,'@') as city,
						IFNULL(c.state,'@') as state,
						IFNULL(c.pin,'@') as pin,
						IFNULL(c.contact,'@') as contact,
						IFNULL(c.default_address,'@') as default_address,
						IFNULL(c.status,'@') as status,
						IFNULL(c.date,'@') as date FROM `admin_user` a Left join `admin_user_login` b on a.ID= b.USER_ID   Left join `admin_user_address` c on a.ID=c.user_id  where EMAIL='".$email."' and social_uniqe_id='".$password."'");
						$resultlogin = array();
						while($rlt = mysql_fetch_array($checkquery1,MYSQL_ASSOC)){
							$resultlogin[] = $rlt;
						}
						$success = array('status' => "Success", "msg" => "Successfully data Get.","resultlogin" => $resultlogin);
					    $this->response($this->json($success), 200);					
					} 
					
					}else{
				
						$resultlogin = array();
						while($rlt = mysql_fetch_array($checkquery,MYSQL_ASSOC)){
							$resultlogin[] = $rlt;
						}
						$checkquery2 = mysql_query("SELECT IFNULL(a.ID,'@') as ID,
						IFNULL(a.F_NAME,'@') as F_name,
						IFNULL(a.L_NAME,'@') as L_NAME,
						IFNULL(a.MARITAL_STATUS,'@') as MARITAL_STATUS,
						IFNULL(a.GENDER,'@') as GENDER,
						IFNULL(a.DOB,'@') as DOB,
						IFNULL(a.ADDRESS,'@') as ADDRESS,
						IFNULL(a.EMAIL,'@') as EMAIL,
						IFNULL(a.PHONE,'@') as PHONE,
						IFNULL(a.MOBILE,'@') as MOBILE,
						IFNULL(a.ALTERNATE_MOBILE,'@') as ALTERNATE_MOBILE,
						IFNULL(a.CITY,'@') as CITY,
						IFNULL(a.STATE,'@') as STATE,
						IFNULL(a.COUNTRY,'@') as COUNTRY,
						IFNULL(a.ZIPCODE,'@') as ZIPCODE,
						IFNULL(a.EDUCATION,'@') as EDUCATION,
						IFNULL(a.OCCUPATION,'@') as OCCUPATION,
						IFNULL(a.INDUSTRY,'@') as INDUSTRY,
						IFNULL(a.INCOME_RANGE,'@') as INCOME_RANGE,
						IFNULL(a.COMPANY_NAME,'@') as COMPANY_NAME,
						IFNULL(a.JOB_TITLE,'@') as JOB_TITLE,
						IFNULL(a.S_FNAME,'@') as S_FNAME,
						IFNULL(a.S_LNAME,'@') as S_LNAME,
						IFNULL(a.S_ADDRESS,'@') as S_ADDRESS,
						IFNULL(a.S_PHONE,'@') as S_PHONE,
						IFNULL(a.S_MOBILE,'@') as S_MOBILE,
						IFNULL(a.S_CITY,'@') as S_CITY,
						IFNULL(a.S_STATE,'@') as S_STATE,
						IFNULL(a.S_COUNTRY,'@') as S_COUNTRY,
						IFNULL(a.S_ZIPCODE,'@') as S_ZIPCODE,
						IFNULL(a.STATUS,'@') as STATUS,
						IFNULL(a.DATE,'@') as DATE,
						IFNULL(b.USER_ID,'@') as USER_ID,
						IFNULL(b.USERNAME,'@') as USERNAME,
						IFNULL(b.PASSWORD,'@') as PASSWORD,
						IFNULL(b.forgetkey,'@') as forgetkey,
						IFNULL(c.id,'@') as id,
						IFNULL(c.user_id,'@') as user_id,
						IFNULL(c.name,'@') as name,
						IFNULL(c.address,'@') as address,
						IFNULL(c.city,'@') as city,
						IFNULL(c.state,'@') as state,
						IFNULL(c.pin,'@') as pin,
						IFNULL(c.contact,'@') as contact,
						IFNULL(c.default_address,'@') as default_address,
						IFNULL(c.status,'@') as status,
						IFNULL(c.date,'@') as date FROM `admin_user` a Left join `admin_user_login` b on a.ID= b.USER_ID   Left join `admin_user_address` c on a.ID=c.user_id  where EMAIL='".$email."' and social_uniqe_id='".$password."'");
						$urow = mysql_fetch_assoc($checkquery2);
					   $id = $urow['ID'];
					  
					mysql_query("update `admin_user_login` set notification_token='$notification_token',mobile_type='$mobile_type' where USER_ID='$id'",  $this->db);
						$success = array('status' => "Success", "msg" => "Successfully data Get.","resultlogin" => $resultlogin);
					    $this->response($this->json($success), 200);						
					}
				$this->response('',204);
				}
				$error = array('status' => "Failed", "msg" => "Invalid Email address or Password");
				$this->response($this->json($error), 400);
			}
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
	$api = new API;
	$api->processApi();
?>