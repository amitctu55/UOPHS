<?php
$pageurl1=$this->uri->segment('1');
$pageurl=$this->uri->segment('2');
$pageurl3=$this->uri->segment('3');
?>
<!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="<?=base_url();?>public/assets/newpanel/dist/img/user2-160x160.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><?=$this->session->userdata('username')?></p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
    
	
	
	<?php if($this->session->userdata('code')	=='A' ){ ?>
	
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
		
        <li class="<?php if($pageurl=='dashboard'){ ?>active<?php }?>"><a href="<?=base_url()?>masters/dashboard"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
        <li class="treeview <?php if($pageurl=='specilization' || $pageurl=='qualification' || $pageurl=='council' || $pageurl=='degree' || $pageurl=='college' || $pageurl=='city' || ($pageurl=='assessment' && $pageurl1 !='results') || $pageurl=='emailsmsconfig' || $pageurl=='lgd'){ ?> active <?php }?>">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span>Masters</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
           <li class="<?php if($pageurl=='specilization'){ ?>active<?php }?>"><a href="<?=base_url()?>masters/specilization"><i class="fa fa-circle-o"></i> Specilization</a></li>
           <li class="<?php if($pageurl=='council'){ ?>active<?php }?>"><a href="<?=base_url()?>masters/council"><i class="fa fa-circle-o"></i> Council</a></li>
           <li class="<?php if($pageurl=='degree'){ ?>active<?php }?>"><a href="<?=base_url()?>masters/degree"><i class="fa fa-circle-o"></i> Degree</a></li>
           <li class="<?php if($pageurl=='location'){ ?>active<?php }?>"><a href="<?=base_url()?>masters/location"><i class="fa fa-circle-o"></i> Location</a></li>
           <li class="<?php if($pageurl=='services'){ ?>active<?php }?>"><a href="<?=base_url()?>masters/services"><i class="fa fa-circle-o"></i> Services</a></li>
             <li class="<?php if($pageurl=='city'){ ?>active<?php }?>"><a href="<?=base_url()?>masters/city"><i class="fa fa-circle-o"></i> City</a></li>
           <!-- <li class="<?php if($pageurl=='religion'){ ?>active<?php }?>"><a href="<?=base_url()?>masters/religion"><i class="fa fa-circle-o"></i> Religion</a></li>
            <li class="<?php if($pageurl=='document'){ ?>active<?php }?>"><a href="<?=base_url()?>masters/document"><i class="fa fa-circle-o"></i> Identity Document</a></li>
            <li class="<?php if($pageurl=='coursetype'){ ?>active<?php }?>"><a href="<?=base_url()?>masters/coursetype"><i class="fa fa-circle-o"></i> Course Type</a></li>
            <li class="<?php if($pageurl=='coursefield'){ ?>active<?php }?>"><a href="<?=base_url()?>masters/coursefield"><i class="fa fa-circle-o"></i> Course Field</a></li>
			<li class="<?php if($pageurl=='course'){ ?>active<?php }?>"><a href="<?=base_url()?>masters/course"><i class="fa fa-circle-o"></i> Courses</a></li>
			<li class="<?php if($pageurl=='holidaymaster'){ ?>active<?php }?>"><a href="<?=base_url()?>masters/holidaymaster"><i class="fa fa-circle-o"></i> Holiday</a></li>
            <li class="<?php if($pageurl=='hrcount'){ ?>active<?php }?>"><a href="<?=base_url()?>masters/hrcount"><i class="fa fa-circle-o"></i> Training Duration</a></li>
            <li class="<?php if($pageurl=='addagency'){ ?>active<?php }?>"><a href="<?=base_url()?>masters/addagency"><i class="fa fa-circle-o"></i> Add Agency</a></li>
            <li class="<?php if($pageurl=='addassesse'){ ?>active<?php }?>"><a href="<?=base_url()?>masters/addassesse"><i class="fa fa-circle-o"></i> Add Assesse</a></li>
            <li class="<?php if($pageurl=='assessment' && $pageurl1 !='results'){ ?>active<?php }?>"><a href="<?=base_url()?>masters/assessment"><i class="fa fa-circle-o"></i> Add Assessment</a></li>
            <li class="<?php if($pageurl=='setting'){ ?>active<?php }?>"><a href="<?=base_url()?>masters/setting"><i class="fa fa-circle-o"></i> Other settings</a></li>
            <li class="<?php if($pageurl=='emailsmsconfig'){ ?>active<?php }?>"><a href="<?=base_url()?>masters/emailsmsconfig"><i class="fa fa-circle-o"></i> Email SMS settings</a></li>
			<li class="<?php if($pageurl=='lgd'){ ?>active<?php }?>"><a href="<?=base_url()?>masters/lgd"><i class="fa fa-circle-o"></i> LGD DATA</a></li>-->
          </ul>
        </li>
        
	
		<!-- <li class="<?php if($pageurl=='subcenter'){ ?>active<?php }?>"><a href="<?=base_url()?>subcenters/subcenter"><i class="fa fa-book"></i> <span>Sub Center</span></a></li>-->
		<!-- <li class="<?php if($pageurl=='facultyreg'){ ?>active<?php }?>"><a href="<?=base_url()?>doctor/facultyreg"><i class="fa fa-user-md"></i> <span>Doctors</span></a></li>-->
       <li class="treeview <?php if($pageurl=='traineereg' || $pageurl=='traineeview' || $pageurl=='traineeupdate' || $pageurl=='temptrainee'){ ?>active<?php }?>">
          <a href="#">
            <i class="fa fa-user-md"></i> <span>Doctors</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php if($pageurl=='doctorreg'){ ?>active<?php }?>"><a href="<?=base_url()?>doctor/doctorreg"><i class="fa fa-circle-o"></i> Add Doctors</a></li>
            <li class="<?php if($pageurl=='doctorview' && $pageurl3!='duplicate'){ ?>active<?php }?>"><a href="<?=base_url()?>doctor/doctorview"><i class="fa fa-circle-o"></i> View Doctors</a></li>
            
			
			
          </ul>
        </li>
        
		 <li class="treeview <?php if($pageurl=='traineereg' || $pageurl=='traineeview' || $pageurl=='traineeupdate' || $pageurl=='temptrainee'){ ?>active<?php }?>">
          <a href="#">
            <i class="fa fa-hospital-o"></i> <span>Clinic &amp; Hospital</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php if($pageurl=='clinicreg'){ ?>active<?php }?>"><a href="<?=base_url()?>doctor/clinicreg"><i class="fa fa-circle-o"></i> Add Clinic/Hospital</a></li>
            <li class="<?php if($pageurl=='clinicreg' && $pageurl3=='viewclinic'){ ?>active<?php }?>"><a href="<?=base_url()?>doctor/clinicreg/viewclinic"><i class="fa fa-circle-o"></i> View Clinics </a></li>
            <li class="<?php if($pageurl=='clinicreg' && $pageurl3=='viewhospital'){ ?>active<?php }?>"><a href="<?=base_url()?>doctor/clinicreg/viewhospital"><i class="fa fa-circle-o"></i> View Hospital </a></li>
           
			
			
          </ul>
        </li>
        
         <li class="treeview <?php if($pageurl=='traineereg' || $pageurl=='traineeview' || $pageurl=='traineeupdate' || $pageurl=='temptrainee'){ ?>active<?php }?>">
          <a href="#">
            <i class="fa fa-hospital-o"></i> <span>Pathology</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php if($pageurl=='pathlabreg'){ ?>active<?php }?>"><a href="<?=base_url()?>doctor/pathlabreg"><i class="fa fa-circle-o"></i> Add Pathology</a></li>
              <li class="<?php if($pageurl=='pathlabreg' && $pageurl3=='viewclinic'){ ?>active<?php }?>"><a href="<?=base_url()?>doctor/pathlabreg/viewpathology"><i class="fa fa-circle-o"></i> View pathlab </a></li>
			
			
          </ul>
        </li>
        
         <li class="treeview <?php if($pageurl=='traineereg' || $pageurl=='traineeview' || $pageurl=='traineeupdate' || $pageurl=='temptrainee'){ ?>active<?php }?>">
          <a href="#">
            <i class="fa fa-users"></i> <span>Patient User</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php if($pageurl=='clinicreg'){ ?>active<?php }?>"><a href="<?=base_url()?>users/userlogincreate"><i class="fa fa-circle-o"></i> User Login</a></li>
            <li class="<?php if($pageurl=='clinicreg' && $pageurl3=='viewclinic'){ ?>active<?php }?>"><a href="<?=base_url()?>users/userlogincreate/userview"><i class="fa fa-circle-o"></i> View Users </a></li>
           
			
			
          </ul>
        </li>
        
         <li class="treeview <?php if($pageurl=='traineereg' || $pageurl=='traineeview' || $pageurl=='traineeupdate' || $pageurl=='temptrainee'){ ?>active<?php }?>">
          <a href="#">
            <i class="fa fa-hospital-o"></i> <span>Appointment</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php if($pageurl=='appointment'){ ?>active<?php }?>"><a href="<?=base_url()?>doctor/appointment/doctorappointment"><i class="fa fa-circle-o"></i>Doctor</a></li>
           <!-- <li class="<?php if($pageurl=='appointment' && $pageurl3=='viewclinic'){ ?>active<?php }?>"><a href="<?=base_url()?>doctor/appointment/hospitalappointment"><i class="fa fa-circle-o"></i>Hospital</a></li> -->
            
      
      
          </ul>
        </li>
  
        
        <li class="treeview <?php if($pageurl=='traineereg' || $pageurl=='traineeview' || $pageurl=='traineeupdate' || $pageurl=='temptrainee'){ ?>active<?php }?>">
          <a href="#">
            <i class="fa fa-hospital-o"></i> <span>Appointment History</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php if($pageurl=='appointment'){ ?>active<?php }?>"><a href="<?=base_url()?>doctor/appointment/todayappointment"><i class="fa fa-circle-o"></i>Today</a></li>
            <li class="<?php if($pageurl=='appointment' && $pageurl3=='viewclinic'){ ?>active<?php }?>"><a href="<?=base_url()?>doctor/appointment/hospitalappointment"><i class="fa fa-circle-o"></i>Upcomming</a></li>
             <li class="<?php if($pageurl=='appointment' && $pageurl3=='viewclinic'){ ?>active<?php }?>"><a href="<?=base_url()?>doctor/appointment/hospitalappointment"><i class="fa fa-circle-o"></i>Cancel</a></li>
              <li class="<?php if($pageurl=='appointment'){ ?>active<?php }?>"><a href="<?=base_url()?>doctor/appointment/user"><i class="glyphicon glyphicon-user"></i> <span>History</span></a></li>
            <li class="<?php if($pageurl=='appointment' && $pageurl3=='viewclinic'){ ?>active<?php }?>"><a href="<?=base_url()?>doctor/appointment/hospitalappointment"><i class="fa fa-circle-o"></i>Hospitalwise Apment</a></li>
      
      
          </ul>
          
         
          
        </li>
        
         <li class="<?php if($pageurl=='appointment'){ ?>active<?php }?>"><a href="<?=base_url()?>doctor/appointment/account"><i class="glyphicon glyphicon-envelope"></i> <span>Account</span></a></li>
          <li class="<?php if($pageurl=='appointment'){ ?>active<?php }?>"><a href="<?=base_url()?>doctor/appointment/doctorwise"><i class="glyphicon glyphicon-envelope"></i> <span>Doctorwise Appointment</span></a></li>
       

        
         <li class="treeview <?php if($pageurl=='traineereg' || $pageurl=='traineeview' || $pageurl=='traineeupdate' || $pageurl=='temptrainee'){ ?>active<?php }?>">
          <a href="#">
            <i class="fa fa-users"></i> <span>User App Downlod</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php if($pageurl=='clinicreg'){ ?>active<?php }?>"><a href="<?=base_url()?>users/userlogincreate/gmail"><i class="fa fa-circle-o"></i>Gmail</a></li>
            <li class="<?php if($pageurl=='clinicreg' && $pageurl3=='viewclinic'){ ?>active<?php }?>"><a href="<?=base_url()?>users/userlogincreate/facebook"><i class="fa fa-circle-o"></i>Facebook </a></li>
           
      <li class="<?php if($pageurl=='clinicreg' && $pageurl3=='viewclinic'){ ?>active<?php }?>"><a href="<?=base_url()?>users/userlogincreate/website"><i class="fa fa-circle-o"></i>Website </a></li>
           
      
          </ul>
        </li>
        
        <li class="<?php if($pageurl=='clinicreg'){ ?>active<?php }?>"><a href="<?=base_url()?>doctor/clinicreg/insert"><i class="glyphicon glyphicon-envelope"></i> <span>Gallery</span></a></li>
		 
		   <li class="<?php if($pageurl=='clinicreg'){ ?>active<?php }?>"><a href="<?=base_url()?>doctor/clinicreg/biomedicalmachine"><i class="glyphicon glyphicon-envelope"></i> <span>Biomedical Equipment </span></a></li>
           
        <li class="<?php if($pageurl=='clinicreg'){ ?>active<?php }?>"><a href="<?=base_url()?>doctor/clinicreg/advertisment"><i class="glyphicon glyphicon-envelope"></i> <span>Advertisment</span></a></li>
        <li class="<?php if($pageurl=='users'){ ?>active<?php }?>"><a href="<?=base_url()?>users/usercreate"><i class="fa fa-users"></i> <span>Users</span></a></li>
        	<li class="<?php if($pageurl=='changepassword'){ ?>active<?php }?>"><a href="<?=base_url()?>users/changepassword"><i class="fa fa-key"></i> <span>Change Password</span></a></li>
		<li><a href="report.php"><i class="fa fa-book"></i> <span>Report</span></a></li>
       <!-- <li class="header">LABELS</li>-->
        <li><a href="<?=base_url()?>others/other/signout"><i class="fa fa-circle-o text-red"></i> <span>Log Out</span></a></li>
        
      </ul>
   
	<?php } else if($this->session->userdata('code')	=='C' ){ ?>
	
	 <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
		
        <li class="<?php if($pageurl=='dashboard'){ ?>active<?php }?>"><a href="<?=base_url()?>ccenter/dashboard"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
        
		 <li class="<?php if($pageurl=='facultyreg'){ ?>active<?php }?>"><a href="<?=base_url()?>faculty/facultyreg"><i class="fa fa-book"></i> <span>Faculty</span></a></li>
       <li class="treeview <?php if($pageurl=='traineereg' || $pageurl=='traineeview' || $pageurl=='traineeupdate' || $pageurl=='temptrainee'){ ?>active<?php }?>">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Trainee</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php if($pageurl=='traineereg'){ ?>active<?php }?>"><a href="<?=base_url()?>trainee/traineereg"><i class="fa fa-circle-o"></i> Create Trainee</a></li>
            <li class="<?php if($pageurl=='traineeview' && $pageurl3!='duplicate'){ ?>active<?php }?>"><a href="<?=base_url()?>trainee/traineeview"><i class="fa fa-circle-o"></i> View Trainee</a></li>
            <li class="<?php if($pageurl=='traineeupdate'){ ?>active<?php }?>"><a href="<?=base_url()?>trainee/traineeupdate"><i class="fa fa-circle-o"></i> Update Trainees</a></li>
			<li class="<?php if($pageurl=='temptrainee'){ ?>active<?php }?>"><a href="<?=base_url()?>trainee/temptrainee"><i class="fa fa-circle-o"></i> SYNC Trainee</a></li>
			<li class="<?php if($pageurl=='traineeview' && $pageurl1=='trainee' && $pageurl3=='duplicate'){ ?>active<?php }?>"><a href="<?=base_url()?>trainee/traineeview/duplicate"><i class="fa fa-circle-o"></i> Duplicate Trainee</a></li>
          </ul>
        </li>
        <li class="treeview <?php if($pageurl=='batch'){ ?>active<?php }?>">
          <a href="#">
            <i class="fa fa-table"></i> <span>Batch</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php if($pageurl=='batch'){ ?>active<?php }?>"><a href="<?=base_url()?>batches/batch"><i class="fa fa-circle-o"></i> Create Batch</a></li>
           </ul>
        </li>
        <li class="treeview <?php if(($pageurl=='center' && $pageurl1!='centers') || $pageurl=='industrial' || $pageurl=='manualcenter'){ ?>active<?php }?>">
          <a href="#">
            <i class="fa fa-table"></i> <span>Attendance</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php if($pageurl=='center' && $pageurl1=='attendance'){ ?>active<?php }?>"><a href="<?=base_url()?>attendance/center"><i class="fa fa-circle-o"></i> Center</a></li>
            <li class="<?php if($pageurl=='industrial' && $pageurl3==''){ ?>active<?php }?>"><a href="<?=base_url()?>attendance/industrial"><i class="fa fa-circle-o"></i> Industrial</a></li>
           </ul>
        </li>
        
        <li class="<?php if($pageurl=='result'){ ?>active<?php }?>"><a href="<?=base_url()?>results/result"><i class="fa fa-book"></i> <span>Result</span></a></li>
		 <li class="treeview <?php if($pageurl=='companyreg' || $pageurl=='placementdetail'){ ?>active<?php }?>">
          <a href="#">
            <i class="fa fa-table"></i> <span>Placement</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php if($pageurl=='companyreg'){ ?>active<?php }?>"><a href="<?=base_url()?>placements/companyreg"><i class="fa fa-circle-o"></i> Company Registration</a></li>
			 <li class="<?php if($pageurl=='placementdetail'){ ?>active<?php }?>"><a href="<?=base_url()?>placements/placementdetail"><i class="fa fa-circle-o"></i> Placement Details</a></li>
          </ul>
         </li>
               <li class="<?php if($pageurl=='users'){ ?>active<?php }?>"><a href="<?=base_url()?>users/changepassword"><i class="fa fa-book"></i> <span>Change Password</span></a></li>
		<!--<li><a href="#"><i class="fa fa-book"></i> <span>Placement</span></a></li>-->
       <!-- <li class="header">LABELS</li>-->
        <li><a href="<?=base_url()?>others/other/signout"><i class="fa fa-circle-o text-red"></i> <span>Log Out</span></a></li>
        
      </ul>
  
	
	<?php } else if($this->session->userdata('code')	=='SC' ){ ?>
	 <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
		
        <li class="<?php if($pageurl=='dashboard'){ ?>active<?php }?>"><a href="<?=base_url()?>sccenter/dashboard"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
        
		
		 
       <li class="treeview <?php if($pageurl=='traineereg' || $pageurl=='traineeview' || $pageurl=='traineeupdate' || $pageurl=='temptrainee'){ ?>active<?php }?>">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Trainee</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php if($pageurl=='traineereg'){ ?>active<?php }?>"><a href="<?=base_url()?>trainee/traineereg"><i class="fa fa-circle-o"></i> Create Trainee</a></li>
            <li class="<?php if($pageurl=='traineeview' && $pageurl3!='duplicate'){ ?>active<?php }?>"><a href="<?=base_url()?>trainee/traineeview"><i class="fa fa-circle-o"></i> View Trainee</a></li>
            <li class="<?php if($pageurl=='traineeupdate'){ ?>active<?php }?>"><a href="<?=base_url()?>trainee/traineeupdate"><i class="fa fa-circle-o"></i> Update Trainees</a></li>
			<li class="<?php if($pageurl=='temptrainee'){ ?>active<?php }?>"><a href="<?=base_url()?>trainee/temptrainee"><i class="fa fa-circle-o"></i> SYNC Trainee</a></li>
			<li class="<?php if($pageurl=='traineeview' && $pageurl1=='trainee' && $pageurl3=='duplicate'){ ?>active<?php }?>"><a href="<?=base_url()?>trainee/traineeview/duplicate"><i class="fa fa-circle-o"></i> Duplicate Trainee</a></li>
          </ul>
        </li>
        <li class="treeview <?php if($pageurl=='batch'){ ?>active<?php }?>">
          <a href="#">
            <i class="fa fa-table"></i> <span>Batch</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php if($pageurl=='batch'){ ?>active<?php }?>"><a href="<?=base_url()?>batches/batch"><i class="fa fa-circle-o"></i> Create Batch</a></li>
           </ul>
        </li>
        <li class="treeview <?php if(($pageurl=='center' && $pageurl1!='centers') || $pageurl=='industrial' || $pageurl=='manualcenter'){ ?>active<?php }?>">
          <a href="#">
            <i class="fa fa-table"></i> <span>Attendance</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php if($pageurl=='center' && $pageurl1=='attendance'){ ?>active<?php }?>"><a href="<?=base_url()?>attendance/center"><i class="fa fa-circle-o"></i> Center</a></li>
            <li class="<?php if($pageurl=='industrial' && $pageurl3==''){ ?>active<?php }?>"><a href="<?=base_url()?>attendance/industrial"><i class="fa fa-circle-o"></i> Industrial</a></li>
			<?php 
			$date=date('Y-m-d');
			$manualgrant = $this->db->where(" `allowed_from` <= '$date' AND `allowed_to` >= '$date'")->where(array('subcenter'=>getInstitutionId(), ))->count_all_results('grant_manual_attendance');
			if($manualgrant){ ?>
			<li class="<?php if($pageurl=='center'){ ?>active<?php }?>"><a href="<?=base_url()?>attendance/center/centermanual"><i class="fa fa-circle-o"></i> Manual</a></li>
	<?php } ?>
           </ul>
        </li>
        
        <li class="<?php if($pageurl=='result'){ ?>active<?php }?>"><a href="<?=base_url()?>results/result"><i class="fa fa-book"></i> <span>Result</span></a></li>
         <li class="<?php if($pageurl=='users'){ ?>active<?php }?>"><a href="<?=base_url()?>users/changepassword"><i class="fa fa-book"></i> <span>Change Password</span></a></li>
		<!--<li><a href="#"><i class="fa fa-book"></i> <span>Placement</span></a></li>-->
       <!-- <li class="header">LABELS</li>-->
        <li><a href="<?=base_url()?>others/other/signout"><i class="fa fa-circle-o text-red"></i> <span>Log Out</span></a></li>
        
      </ul>
  
	<?php } else if($this->session->userdata('code')	=='AG' ){ ?>
	
	 <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
		
        <li class="<?php if($pageurl=='dashboard'){ ?>active<?php }?>"><a href="<?=base_url()?>agency/dashboard"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
        
		
		<li class="<?php if($pageurl=='result'){ ?>active<?php }?>"><a href="<?=base_url()?>results/result"><i class="fa fa-book"></i> <span>Result</span></a></li>
        <li class="<?php if($pageurl=='assessment' && $pageurl1 =='results'){ ?>active<?php }?>"><a href="<?=base_url()?>results/assessment"><i class="fa fa-book"></i> <span>Assessment</span></a></li>
		
		    <li class="<?php if($pageurl=='users'){ ?>active<?php }?>"><a href="<?=base_url()?>users/changepassword"><i class="fa fa-book"></i> <span>Change Password</span></a></li>
		<!--<li><a href="#"><i class="fa fa-book"></i> <span>Placement</span></a></li>-->
       <!-- <li class="header">LABELS</li>-->
        <li><a href="<?=base_url()?>others/other/signout"><i class="fa fa-circle-o text-red"></i> <span>Log Out</span></a></li>
        
      </ul>
	
	<?php }?>
   </section>
    <!-- /.sidebar -->
  </aside>
  
  <style>
  @media (min-width: 1200px) and (max-width: 1400px){
   .main-sidebar,.logo{
    width : 180px;
   }
   .content-wrapper, .main-footer{
    margin-left : 180px;
   }
   .container {
    width: 1120px;
}
  }
  </style>