<!-- Mirrored from eyecix.com/html/careplus/team-list.html by --->
<?php $this->load->view("includes/header.php"); ?>


    <div class="careplus-subheader">

        <div class="careplus-breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ul>
                            <li><a href="<?=base_url();?>">Homepage</a></li>
                            <li>Hospital Login </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section id="doctor_list">
        
         <div class="container">
            <div class="row">

             <div class="col-sm-4 col-md-offset-4 box_sh_bg1">

    
<ul class="dis_inli">
    <li class="actives"><a href="<?=base_url('hospital-login');?>">Login</a></li>
    <li ><a class="cwhi" href="<?=base_url('hospital-signup');?>">Sign up</a></li>
   
  </ul>


                        <div class="col-sm-12 borders">
                            <div class="label_name">
                   <form id='hosloginform' action='<?=base_url();?>hospitaluser/login' method='post'>
                                 <span>Mobile Number / Email ID</span>
                                  <input  type="text" name="email" class="form-control" required>
                                   <span>Password</span>
                                  <input  type="Password" name="password" class="form-control" required>
                                    <a href="<?=base_url('hospital-forgotpassword');?>" >Forgot password?</a>
      <button type="submit" class="btn  btn-lg common-btn practo-btn"> Login  </button>
	   </form>
	   
      <!-- <div class="hr-container">
          <hr class="hr-inline" align="left">
          <span class="hr-text"> or </span>
          <hr class="hr-inline" align="right">
      </div>
       <div>
          <a href="<?=base_url();?>Fbauth" class="btn  btn-lg connect-facebook-btn" id="facebookbtn">
              <span class="facebookIcon">
<i class="fa fa-facebook" aria-hidden="true"></i> Connect with Facebook
              </span>
          
         </a>
		 
		 <a href="<?=base_url();?>Google" class="btn  btn-lg connect-facebook-goole">
              <span class="google">
              <i class="fa fa-google-plus" aria-hidden="true"></i> Connect with Google+
              </span>
           
         </a>
		 

      </div>-->
         </div>                 
                                
                           

                        </div>

    <!-----

<div class="col-sm-5 col-md-offset-4 borders">
                            <div class="label_name">
                   
                                 <span>Full Name</span>
                                  <input value="Full Name" type="text" name="name" class="form-control">
                                   <span>Mobile Number</span>
                                  <input value="Mobile Number" type="text" name="name" class="form-control">

                                  <span>Create Password</span>
                                  <input value="Mobile Number" type="Password" name="name" class="form-control">
                                  <div class="forget-pasword">
    
      </div>
      <button type="submit" class="btn  btn-lg common-btn practo-btn"> Send OTP
       </button>
     
         </div>                 
                                
                           

                        </div>---->



    
      </div>
                      </div>
                       </div>
    </section>


  


    <?php $this->load->view('includes/footer.php'); ?>
	<script>
	$('#hosloginform').submit(function(e) {		
		e.preventDefault(e);		
		/* $('button[type=submit], input[type=submit]').prop('disabled',true); */		
		var myform=$(this);		
		$.ajax({			
			type: "POST",			
			url: myform.attr('action'),			
			data: myform.serialize(),			
			success: function( response ) {				 
				response = JSON.parse(response);				
				if(response.status=='success'){
					window.location="<?=base_url();?>hospital-dashboard";				
				}				
				else if(response.status=='otp'){					
					window.location="<?=base_url();?>hospital-verifymobile";								
				}
				else if(response.status=='failed'){					
					alert(response.msg);									
				}else{					
					alert('opps'+response.msg);				
				}				
				console.log( response );			
			}		
		});			
	});		
	
	</script>