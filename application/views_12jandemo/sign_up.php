<!-- Mirrored from eyecix.com/html/careplus/team-list.html by --->
<?php include ("includes/header.php"); ?>


    <div class="careplus-subheader">

        <div class="careplus-breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ul>
                            <li><a href="<?=base_url();?>">Homepage</a></li>
                            <li>Login / Sign Up</li>
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

    
<ul class="dis_inli1">
    <li class="cwhi1"><a href="<?=base_url('login');?>">Login</a></li>
    <li ><a class="actives" href="<?=base_url('signup');?>">Sign up</a></li>
   
  </ul>


                      

<div class="col-sm-12 borders"><form id='registrationform' action='<?=base_url();?>User/register' method='post'>
                            <div class="label_name">
                   
                                 <span>Full Name</span>
                                  <input value="" type="text" name="name" class="form-control" required>
								  <span>E-Mail</span>
                                  <input value="" type="email" name="email" class="form-control" >
                                   <span>Mobile Number</span>
                                  <input value="" type="text" name="mobile" class="form-control"  onkeypress="return isNumber(event)" required>

                                  <span>Password</span>
                                  <input placeholder="Password" type="Password" name="password" class="form-control" required>
                                  <div class="forget-pasword">
    
      </div>
      <button type="submit" class="btn  btn-lg common-btn practo-btn"> Register
       </button>
     
         </div>                 </form>
                                
                           

                        </div>



    
      </div>
                      </div>
                       </div>
    </section>


  


    <?php include ('includes/footer.php'); ?>