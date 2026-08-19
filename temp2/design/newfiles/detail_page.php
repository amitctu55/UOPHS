<!-- Mirrored from eyecix.com/html/careplus/team-list.html by --->
<?php include ("includes/header.php"); ?>
    <style type="text/css">
section {
    padding: 20px 0 0;
  border-top: 1px solid #ddd;
}

input {
  display: none;
}

label {
  display: inline-block;
  margin: 0 0 -1px;
  padding: 15px 25px;
  font-weight: 600;
  text-align: center;
  color: #bbb;
  border: 1px solid transparent;
}

label:before {
  font-family: fontawesome;
  font-weight: normal;
  margin-right: 10px;
}

label[for*='1']:before { content: '\f1cb'; }
label[for*='2']:before { content: '\f17d'; }
label[for*='3']:before { content: '\f16b'; }
label[for*='4']:before { content: '\f1a9'; }

label:hover {
  color: #888;
  cursor: pointer;
}

input:checked + label {
  color: #555;
  border: 1px solid #ddd;
  border-top: 2px solid #9bc03c;
  border-bottom: 1px solid #fff;
}

#tab1:checked ~ #content1,
#tab2:checked ~ #content2,
#tab3:checked ~ #content3,
#tab4:checked ~ #content4 {
  display: block;
}

@media screen and (max-width: 650px) {
  label {
    font-size: 0;
  }
  label:before {
    margin: 0;
    font-size: 18px;
  }
}

@media screen and (max-width: 400px) {
  label {
    padding: 15px;
  }
}

#content2
{display: none;}
#content3
{display: none;}
#content4
{display: none;}
#content1
{display: none;}



    </style>

    <div class="careplus-subheader">
        <div class="careplus-subheader-image">
            <span class="careplus-dark-transparent"></span>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>Doctor Detail Page</h1>

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
                            <li>Doctor Detail Page</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section id="doctor_list">
        <div class="container">
            <div class="row">

                <div class="col-sm-9 box_sh_bg1">
                    <div class="">
                        <div class="col-sm-2 paddl0 docimg"><img src="images/team-list-img1.jpg" alt="">
                        </div>

                        <div class="col-sm-10 paddl0">
                            <div class="doc_nam1">
                                <span>Dr. Birendra Kumar Pawar</span>
                                <ul>
                                    <li>MBBS, MD General Medicine</li>
                                    <li>General Physician, 16 Years Experience</li>

                                </ul>
                             

                            </div>
                                     
<ul class="add_list1">
                                 <li><i class="fa fa-check" aria-hidden="true"></i>
                                    <span>Medical Registration Verified</li>
                                        <li><i class="fa fa-thumbs-o-up" aria-hidden="true"></i>%
                                    <span><b>100</b>(11 votes)</li>
                              
                            </ul>
                            <p class="doc_nam2">Dr. Birendra Kumar Pawar is a Cardiologist and General Physician in Sector 26, Noida and has an experience of 16 years in these fields. Dr. Birendra Kumar Pawar practices at Apollo Hospitals in Sector 26, Noida and Prakash Hospital in Sector 33, Noida. He completed MBBS from Jiwaji Unniversity in 1998 and MD General Medicine from Rani Durgawati vishwa vidhyalaya, jabalpur in 2002.</p>
                        </div>

                       

                         <div class="col-sm-12 padd0">
                    
                   
                      <a href="#" class="view_profile">Give Feedback</a>
                 
                </div>
                    </div>
                   
                </div>
                
            </div>

        </div>
         <div class="container">
            <div class="row">

                <div class="col-sm-9 box_sh_bg1">

        

  <input id="tab1" type="radio" name="tabs" checked>
  <label for="tab1">Info</label>
    
  <input id="tab2" type="radio" name="tabs">
  <label for="tab2">Feedback</label>
    
  <input id="tab3" type="radio" name="tabs">
  <label for="tab3">Consult Q&A</label>
    
  <input id="tab4" type="radio" name="tabs">
  <label for="tab4">Healthfeed</label>
    
  <section id="content1">
  
  <div class="">

                        <div class="col-sm-7 ">
                            <div class="doc_nam">
                                <span>Sector 33, Noida</span>
                                  <div class="hosp_name">
                                <span><a href="#">Prakash Hospital</a></span>
                                <p>WA-87, First Floor, Mother Dairy Road, Shakarpur, Landmark: Near Laxmi Nagar Metro Station Gate Number - 2, Near ICICI Bank, Delhi</p> 

                                <ul class="star">
                                    <li style="margin-right: 16px !important;"><b>Reviews</b></li>
                                    <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                         <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                               <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                     <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                           <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                </ul>                             
 </div>
         </div>                 
                                
                           

                        </div>
                        <div class="col-sm-2"></div>
<div class="col-sm-3 padd0">
                            <ul class="add_list">
                                 <li><b>Mon - Sat</b></i>
                                    <span>10:00 AM - 2:00 PM</span></li>
                             
                                <li><i class="fa fa-money"></i>
                                    <span>500</span></li>
                       
                                   
                            </ul>

                            <p>30 mins or less wait time assured</p>
                       </div>
                       

    
                                              </div>
  </section>
    
  <section id="content2">
  <p>Hello</p>
  </section>
    
  <section id="content3">
  <p>Hello</p>
  </section>
     <section id="content4">
    <p>Hello</p>
  </section>
      </div>

                      </div>
                       </div>
    </section>


  


    <?php include ('includes/footer.php'); ?>