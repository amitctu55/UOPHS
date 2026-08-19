<?php
if ($this->session->userdata('userid')!=''){ 
	$userdata['id']=$this->session->userdata('userid');
	$userdata['row']=$this->db->get_where('userlogin',array('USERID'=>$userdata['id']))->row();
	$userdata['email']=$userdata['row']->EMAIL;
	$userdata['mobile']=$userdata['row']->MOBILE;
	$userdata['name']=$userdata['row']->FNAME.' '.$userdata['row']->LNAME;
}
if(		
		current_url() != base_url().'login' && 
		current_url() != base_url().'signup' && 
		current_url() != base_url().'forgotpassword' && 
		current_url() != base_url().'verifymobile' &&
		
		current_url() != base_url().'doctor-login' && 
		current_url() != base_url().'doctor-signup' && 
		current_url() != base_url().'doctor-forgotpassword' && 
		current_url() != base_url().'doctor-verifymobile' &&
		
		current_url() != base_url().'hospital-login' && 
		current_url() != base_url().'hospital-signup' && 
		current_url() != base_url().'hospital-forgotpassword' && 
		current_url() != base_url().'hospital-verifymobile' 
   ){
	if($_SERVER['QUERY_STRING'])
		$this->session->set_userdata('last_page', current_url().'?'.$_SERVER['QUERY_STRING']);
	else
		$this->session->set_userdata('last_page', current_url());

}
?>

<header>
    <title>Welcome to Upchaar</title>
<link rel="icon" href="images/logo.png" type="image/gif" sizes="16x16">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">


    <link rel="stylesheet" type="text/css" href="<?=base_url();?>style_home.css">
        <link rel="stylesheet" type="text/css" href="<?=base_url();?>style_home2.css">
            <link rel="stylesheet" type="text/css" href="<?=base_url();?>media.css">
            <link rel="stylesheet" type="text/css" href="<?=base_url();?>mediauser.css">            
  <style type="text/css">
     .login
 {
    margin-left: 54px;
    border: 1px solid #fff;
    padding: 11px 30px;
    margin-top: 9px;
    float: right;
    color: #fff;
}
.login a
{color: #fff;}
.login:hover
{background: #9bc03c;
color: #fff;}

.iconEffect {
    padding: 7px;
    border-radius: 20px;
    transition:0.2s;
    transition-timing-function: ease-in;
}
.navbar-nav > li:hover .iconEffect{
   transform: scale(1.3, 1.3);
}

 .dropdown:hover .dropdown-menu{
     display:block;
 }

.nav .open>a, .nav .open>a:focus, .nav .open>a:hover {
    background-color: #9bc03c;
    border-color: #337ab7;
}

.careplus-user-list li {
  
    margin: 15px 0px 0px -11px!important;
 
}
/*--madicine model box css--*/
#login-form-link, #register-form-link{color:white;padding: 10px 22%;}
#login-form-link, #register-form-link:hover{text-decoration:none;}
.modelhead{background:#9bc03c;}
#login-submit{background: #9bc03c;color: white;}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 158px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 9;
    text-align: center;
}

.dropdown-content a {
    color: white;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    background: #043d5b;
}
.dropdown-content a:active {background:red;}
.dropdown-content a:hover {
    background-color: #073146;
    color: white;
}
.dropdown-menu li {
    background: #9bbf3c;
    text-align: center;
    border-bottom: 2px solid #82a032;
    
}

.dropdown-menu li a {
    color: white;
    font-weight: bold;
    background: #9abf3c;
    padding: 12px 55px;
}
.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #073146;color:white;}

.mynavback {
    background: none!important;
}
#boxdiv {
    margin-bottom: 31px!important;
}

.popboxdesign2{
     float: left;
    width: 100%;
    height: 88px;
}


  </style>


<div class="container">
<div class="row">
                        <aside class="col-md-3 logocont"><a href="<?=base_url();?>" class="careplus-logo"><img id="upchar_logo" src="<?=base_url();?>images/Final_logo23.png" alt=""></a></aside>

                        <aside class="col-md-9" id="HeadMobile">
                                  <h2 class="sitename"><b>UPCHAR</b></h2>
                                  <h6 class="slogan">one place of your healthcare</h6>
                                  


<nav class="navbar">
    <ul class="nav navbar-nav navbar-right">
         <li>
          <a href="<?=base_url();?>"><span class="glyphicon glyphicon-home iconEffect"></span> Home</a>
      </li>
      <li class="showPartners" data-target="#madicine">
         <a href="<?=base_url();?>"><span class="glyphicon glyphicon-thumbs-up iconEffect"></span> Upchar Partner</a>
      </li>
     
     
        <li class="dropdown">
             <a class="dropdown-toggle" data-toggle="dropdown" href="<?=base_url();?>">
            <i class="fas fa-handshake iconEffect"></i> Partner Login <span class="caret"></span></a>
        <ul class="dropdown-menu" style="background: none;">
             <li> <a href="<?=base_url();?>doctor-aindex">Doctor</a></li>
          <li> <a href="<?=base_url();?>hospital-aindex">Hospital</a></li>
          <li> <a href="<?=base_url();?>pathlab-login">Pathology</a></li>
          <!--
          <li> <a href="<?=base_url();?>pathdoctor-login">Pathdoctor</a></li>
          <li>  <a href="<?=base_url();?>medical-login">Chemist</a></li>-->
         
        </ul>
      </li>
        
         <?php if ($this->session->userdata('userid')==''){ ?>
       <li>
          <a href="https://upcharnews.blogspot.com/" target="_blank"><i class="fas fa-newspaper iconEffect"></i> Blog</a>
      </li>
      <!--
      <li>
          <a href="<?=base_url('signup');?>"> <span class="glyphicon glyphicon-user iconEffect"></span> Sign Up</a>
      </li>
      -->
      <li>
      <a href="<?=base_url('login');?>"><span class="glyphicon glyphicon-log-in iconEffect"></span> Login / <span class="glyphicon glyphicon-user iconEffect"></span> Sign Up </a>
       </li>
      	<?php } ?>
      	
    </ul>

</nav>
        </aside>


<img class="mobileIcon" src="images/menu_icon.png" />


                    
                    </div>

</div>

<!--partner btn popup
 <div class="modal fade" id="madicine" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header modelhead">
          <button type="button" class="close" data-dismiss="modal" style="background:black color:white;">&times;</button>
          <h4 class="modal-title" style="color:white;">Medicine Partner's</h4>
        </div>
        <div class="modal-body">
          

    <div class="container">
      <div class="row">
      <div class="col-md-8">
        <div class="panel panel-login">
          <div class="panel-heading">
            <div class="row">
              <div class="col-xs-6" style="background: #9bc03c;padding:12px;color:white;text-align:center;border-right:2px solid white;">
                <a href="#" class="active" id="login-form-link">Login</a>
              </div>
              <div class="col-xs-6" style="background: #9bc03c;padding:12px;color:white;text-align:center;">
                <a href="#" id="register-form-link">Register</a>
              </div>
            </div>
            <hr>
          </div>
          <div class="panel-body">
            <div class="row">
              <div class="col-lg-12">
                <form id="login-form" action="#" method="post" role="form" style="display: block;">
                  <div class="form-group">
                    <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="">
                  </div>
                  <div class="form-group">
                    <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
                  </div>
                  <div class="form-group text-center">
                    <input type="checkbox" tabindex="3" class="" name="remember" id="remember">
                    <label for="remember"> Remember Me</label>
                  </div>
                  <div class="form-group">
                    <div class="row">
                      <div class="col-sm-6 col-sm-offset-3">
                        <input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In">
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="row">
                      <div class="col-lg-12">
                        <div class="text-center">
                          <a href="#" tabindex="5" class="forgot-password">Forgot Password?</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </form>
                <form id="register-form" action="https://phpoll.com/register/process" method="post" role="form" style="display: none;">
                  <div class="form-group">
                    <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="">
                  </div>
                  <div class="form-group">
                    <input type="email" name="email" id="email" tabindex="1" class="form-control" placeholder="Email Address" value="">
                  </div>
                  <div class="form-group">
                    <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
                  </div>
                  <div class="form-group">
                    <input type="password" name="confirm-password" id="confirm-password" tabindex="2" class="form-control" placeholder="Confirm Password">
                  </div>
                  <div class="form-group">
                    <div class="row">
                      <div class="col-sm-6 col-sm-offset-3">
                        <input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" style="background: #9bc03c;color:white;" value="Register Now">
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal" style="background: #9bc03c;color: white;">Close</button>
        </div>
      </div>
    </div>
  </div>
  

Close partner btn popup-->


</header>
<div id="showBox">
  
        <div class="col-md-12" id="showboxmargin">
                            <div class="careplus-fancy-title" id="boxdiv">
                                <button style="background: #043d5b;color:white;padding: 11px 13px;opacity: 1;" class="close">x</button>
                                <h2 style="color:black;">Our Partner's</h2>
                                <span><small></small><i class="fas fa-link"></i></span>
                            </div>
                            <div class="careplus-blog careplus-blog-modern">
                                <ul class="row">

                              


                                       <li class="col-md-3" id="tabpopup">
                                          
                                        <figure class="popboxdesign"><a href='<?=base_url();?>hospitals'><img class="popboxdesign" src="images/Hospital.jpg" alt=""><span><i class="fa fa-link"></i><small></small></span></a>
                                            <!--    <time datetime="2008-02-14 20:00">21 AUG</time>-->
                                        </figure>
                                        <div class="careplus-blog-modern-text text-center">
                                            <h6><a href='<?=base_url();?>hospitals'>Hospital</a></h6>
                                        </div> 
                                        
                                    </li>


                                    <li class="col-md-3" id="tabpopup">
                                       
                                        <figure class="popboxdesign"><a href="#"><img class="popboxdesign" src="images/blog-modern-img3.jpg" alt=""><span><i class="fa fa-link"></i><small></small></span></a>
                                            <!--    <time datetime="2008-02-14 20:00">21 AUG</time>-->
                                        </figure>
                                        <div class="careplus-blog-modern-text text-center">
                                            <h6><a href="#">Pathology</a></h6>
                                       </div>
                                    </li>
                                    <li class="col-md-3" id="tabpopup">
                                      
                                        <figure class="popboxdesign"><a href="#"><img class="popboxdesign" src="images/3d-printed-pharmaceuticals-header_kss.jpg" alt=""><span><i class="fa fa-link"></i><small></small></span></a>
                                           <!--    <time datetime="2008-02-14 20:00">21 AUG</time>-->
                                        </figure>
                                        <div class="careplus-blog-modern-text text-center">
                                            <h6><a href="#" data-toggle="modal" data-target="#madicine">Medicine</a></h6>
                                    
                                        </div>
                                    </li>
                                    <li class="col-md-3" id="tabpopup">
                                    
                                        <figure class="popboxdesign"> <a href='<?=base_url();?>doctors'><img class="popboxdesign" class="popboxdesign" src="images/blog-modern-img2.jpg" alt=""><span><i class="fa fa-link"></i><small></small></span></a>
                                          <!--    <time datetime="2008-02-14 20:00">21 AUG</time>-->
                                        </figure>
                                          <div class="careplus-blog-modern-text text-center">
                                            <h6><a href='<?=base_url();?>doctors'>Doctor</a></h6>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>

 
</div>

<script type="text/javascript">
  $(function() {

    $('#login-form-link').click(function(e) {
    $("#login-form").delay(100).fadeIn(100);
    $("#register-form").fadeOut(100);
    $('#register-form-link').removeClass('active');
    $(this).addClass('active');
    e.preventDefault();
  });
  $('#register-form-link').click(function(e) {
    $("#register-form").delay(100).fadeIn(100);
    $("#login-form").fadeOut(100);
    $('#login-form-link').removeClass('active');
    $(this).addClass('active');
    e.preventDefault();
  });

});

</script>

<script>
$(document).ready(function() {
        $("#showBox").hide();
    $(".showPartners").on("mouseenter", function() {
        $("#showBox").show();
    })
     $(".showPartners").on("mouseleave", function() {
        $("#showBox").hide();
    })
    $('#showBox').on("mouseleave", function() {
        $("#showBox").hide();
    });

    $(".close").click(function(){
    $("#showBox").css("display", "none");
    
  });

     $("#showBox").on("mouseenter", function() {
        $("#showBox").show();
    })
});

</script>

<script> 
$(document).ready(function(){
  $(".mobileIcon").click(function(){
    $(".navbar").slideToggle("slow");
  });
});

</script>