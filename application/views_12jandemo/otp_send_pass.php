<!-- Mirrored from eyecix.com/html/careplus/team-list.html by --->
<?php include ("includes/header.php"); ?>


    <div class="careplus-subheader">
        <div class="careplus-subheader-image">
            <span class="careplus-dark-transparent"></span>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>User Mobile Verification </h1>

                    </div>
                </div>
            </div>
        </div>
        <div class="careplus-breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ul>
                            <li><a href="index.html">Homepage</a></li>
                            <li>Login / Sign Up</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

         <div class="container">
            <div class="row">
                        <div class="col-sm-4 col-md-offset-4 borders">
                          <div class="box-header">Type OTP Number</div>
                            <div class="label_name">                 
                                <p></p>
                                   <span>Type OTP Number 6 Digit</span><form id='signupotpform' action='<?=base_url();?>user/verifysignupotp' method='post'>
                                  <input  type="Password" name="otp" class="form-control" required>
      <button type="submit" class="btn  btn-lg common-btn practo-btn" style="margin-top: 10px!important;"> Send       </form>
         </div>                 
                                
                       <div class='pull-right '> <a href='#' class='pull-right resendotp'>Resend OTP</a></div>    

                        </div>

    
  
    
    
      </div>
          </div>



  


    <?php include ('includes/footer.php'); ?>