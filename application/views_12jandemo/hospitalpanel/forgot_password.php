<!-- Mirrored from eyecix.com/html/careplus/team-list.html by --->
<?php $this->load->view("includes/header.php"); ?>


    <div class="careplus-subheader">
        <div class="careplus-subheader-image">
            <span class="careplus-dark-transparent"></span>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>Hospital Forget Password</h1>

                    </div>
                </div>
            </div>
        </div>
        <div class="careplus-breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ul>
                            <li><a href="<?=base_url();?>">Homepage</a></li>
                            <li ><a href="<?=base_url('hospital-login');?>">Login</a></li>							
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

         <div class="container">
            <div class="row"><form action='<?=base_url();?>hospitaluser/forgotpass' method='post' id='hosforgotform'>
                        <div class="col-sm-4 col-md-offset-4 borders">
                          <div class="box-header">Forgot Password</div>
                            <div class="label_name">                 
                                <p>Provide us the email id/ mobile of your Upcharr account and we will send you an otp with instructions to reset your password.</p>
                                   <span>Enter Email Or Mobile</span>
                                  <input value="" type="" name="mobile" class="form-control" Placeholder='Enter Registered Email or Mobile' required>
      <button type="submit" class="btn  btn-lg common-btn practo-btn" style="margin-top: 10px!important;"> Send me instructions
       </button>
         </div>                 
                        </div></form>
						
<form id='hosforgototpform' action='<?=base_url();?>hospitaluser/verifyforgototp' method='post' style='display:none;'>
 <div class="col-sm-4 col-md-offset-4 borders">                          
 <div class="box-header">Type OTP Number</div>                           
 <div class="label_name">                                               
 <p></p>                                  
 <span>Type OTP Number 6 Digit</span>                                  
 <input  type="Password" name="otp" class="form-control" required>      
 <button type="submit" class="btn  btn-lg common-btn practo-btn" style="margin-top: 10px!important;"> Submit </button>             
 </div>
<div class='pull-right '> <a href='#' class='pull-right hospresendfotp'>Resend OTP</a></div> 
 </div>
 </form>
 
 <form id='hosforgotnewpassform' action='<?=base_url();?>hospitaluser/setnewpass' method='post' style='display:none;'>
 <div class="col-sm-4 col-md-offset-4 borders">                         
 <div class="box-header">Set New Password</div>                            
 <div class="label_name">                                                
 <p> </p>                                 
 <span>Create New Password</span>                                 
 <input  type="Password" name="pass" class="form-control" required>      <button type="submit" class="btn  btn-lg common-btn practo-btn" style="margin-top: 10px!important;" required> Submit </button>            
 </div>                                                                                                    
 </div>
 </form>
    
  
    
    
      </div>
          </div>



  


    <?php $this->load->view('includes/footer.php'); ?>
	 <script>
	$('#hosforgotform').submit(function(e) {		
		e.preventDefault(e);		
		var myform=$(this);		
		$.ajax({			
			type: "POST",			
			url: myform.attr('action'),			
			data: myform.serialize(),			
			success: function( response ) {				 
				response = JSON.parse(response);				
				if(response.status=='success'){
				$('#hosforgotform').hide();
				$('#hosforgototpform').show();
				}else{					
					alert('opps'+response.msg);				
				}				
				console.log( response );			
			}		
		});			
	});		
	
	
	$('#hosforgototpform').submit(function(e) {		
		e.preventDefault(e);		
		var myform=$(this);		
		$.ajax({			
		type: "POST",			
		url: myform.attr('action'),			
		data: myform.serialize(),			
		success: function( response ) {				
			response = JSON.parse(response);				
			if(response.status=='success'){										
					$('#hosforgototpform').hide();
				$('#hosforgotnewpassform').show();
			}else if(response.status=='failed'){					
				alert(response.msg);									
			}else{
				alert('opps'+response.msg);
			}
			console.log( response );			
		}
		});
	});		
	
	$('#hosforgotnewpassform').submit(function(e) {		
		e.preventDefault(e);		
		var myform=$(this);		
		$.ajax({			
		type: "POST",			
		url: myform.attr('action'),			
		data: myform.serialize(),			
		success: function( response ) {				
			response = JSON.parse(response);				
			if(response.status=='success'){										
				window.location="<?=base_url();?>hospital-login";
			}else if(response.status=='failed'){					
				alert(response.msg);									
			}else{
				alert('opps'+response.msg);
			}
			console.log( response );			
		}
		});
	});		
	$('.hospresendfotp').click(function(e) {		
		e.preventDefault(e);		
		/* $('button[type=submit], input[type=submit]').prop('disabled',true); */		
		//var myform=$(this);		
		$.ajax({			
		type: "POST",			
		url: '<?=base_url();?>hospitaluser/resendforgetotp',//myform.attr('action'),			
		//data: myform.serialize(),			
		success: function( response ) {				
			response = JSON.parse(response);				
			if(response.status=='success'){										
				//window.location="<?=base_url();?>";
				myalert(response.msg);
				//window.location="<?=$this->session->userdata('last_page');?>";					
			}else if(response.status=='failed'){					
				myalert(response.msg);									
			}else{
				myalert('opps'+response.msg);
			}
			console.log( response );			
		}
		});
	});		
	
	</script>