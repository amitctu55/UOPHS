<!-- Mirrored from eyecix.com/html/careplus/team-list.html by --->
<?php include ("includes/header.php"); ?>


    <div class="careplus-subheader">
        <div class="careplus-subheader-image">
            <span class="careplus-dark-transparent"></span>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>Reset Password</h1>

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
                            <li ><a href="<?=base_url('login');?>">Login</a></li>							
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

         <div class="container">
            <div class="row"><form action='<?=base_url();?>User/forgotpass' method='post' id='forgotform'>
                        <div class="col-sm-4 col-md-offset-4 borders">
                          <div class="box-header">Forgot Password</div>
                            <div class="label_name">                 
                                <p>Provide us the email id/ mobile of your Upchar account and we will send you an otp with instructions to reset your password.</p>
                                   <span>Enter Email Or Mobile</span>
                                  <input value="" type="" name="mobile" class="form-control" Placeholder='Enter Registered Email or Mobile' required>
      <button type="submit" class="btn  btn-lg common-btn practo-btn" style="margin-top: 10px!important;"> Send me instructions
       </button>
         </div>                 
                        </div></form><form id='forgototpform' action='<?=base_url();?>user/verifyforgototp' method='post' style='display:none;'>
 <div class="col-sm-4 col-md-offset-4 borders">                          <div class="box-header">Type OTP Number</div>                            <div class="label_name">                                                 <p></p>                                   <span>Type OTP Number 6 Digit</span>                                  <input  type="Password" name="otp" class="form-control" required>      <button type="submit" class="btn  btn-lg common-btn practo-btn" style="margin-top: 10px!important;"> Submit </button>       <div class='pull-right '> <a href='#' class='pull-right resendotp'>Resend OTP</a></div>      </div>                                                                                                    </div></form><form id='forgotnewpassform' action='<?=base_url();?>user/setnewpass' method='post' style='display:none;'>
 <div class="col-sm-4 col-md-offset-4 borders">                          <div class="box-header">Set New Password</div>                            <div class="label_name">                                                 <p></p>                                   <span>Create New Password</span>                                  <input  type="Password" name="pass" class="form-control" required>      <button type="submit" class="btn  btn-lg common-btn practo-btn" style="margin-top: 10px!important;" > Submit </button>             </div>                                                                                                    </div></form>
    
  
    
    
      </div>
          </div>



  


    <?php include ('includes/footer.php'); ?>