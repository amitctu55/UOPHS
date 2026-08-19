<!-- Mirrored from eyecix.com/html/careplus/team-list.html by --->
<?php include ("includes/header.php"); ?>
<style>
    .careplus-navigation-section.careplus-bgcolor, .box-form .careplus-fancy-title{
        display:none;
    }
    .box-form {
    padding: 20px;
}
</style>
<div class="careplus-banner">
<div class="container-fluid">
            <div class="row">
			<form action='<?=base_url();?>search' method='GET'>
                <div class="box-form">
                    	
						<div class="col-md-12">
                            <div class="careplus-fancy-title" style="margin: 0px 0px 20px;">
                                <h2 style="color:#fff;">Search your needs!</h2>
                                <span><small></small><i class="icon-tool5"></i></span>
                            </div>
                            </div>
                    <div class="col-sm-2 col-sm-offset-1">
                        <div class="input-group shadow">
                            <span class="input-group-addon"> <i class="fa fa-map-marker"> &nbsp; &nbsp; </i></span>
                            <input type="text" class="form-control" name="location" placeholder="Location" id='hintcity'>
                            <input type="hidden" class="form-control" name="city"  id='city'>
                        </div>
                    </div>
                    <div class="col-sm-5">
                        <div class="input-group shadow">
                            <span class="input-group-addon"><i class="fa fa-search"></i></span>
                            <input type="text" id='hint' class="form-control" name="keyword" placeholder="Search Hospitals/Doctors/Clinics etc">
                        </div>
                        
                    </div>
                    <div class="col-sm-2">
                        <div class="input-group shadow">
                            <span class="input-group-addon"><i class="fa fa-user-md"></i></span>
                            <select class="form-control" name='spl'>
							<option value=''>-Specialization-</option>
							<?php foreach($specialization as $s){ ?>
                                <option value='<?=$s->id;?>'><?=$s->name;?></option>
							<?php } ?>
                                 
                            </select>
                        </div>
                        
                    </div>
                    <div class="col-sm-1"><button class="careplus-booking-btn careplus-bgcolor-two" style=" margin-top: 0px; line-height: 40px;box-shadow: 3px 3px 0px #08364b9e; ">Search</button></div>
                    <div class="clearfix"></div>
                </div>
                </form>
            </div>
                        <div class="clearfix"></div>
            
        </div>
           
            
        </div>

    <section id="doctor_list">
        <div class="container">
            <div class="row">
				<?php foreach($doctors as $d){ ?>
                <div class="col-sm-9 col-xs-12 box_sh_bg">
                    <div class="">
                        <div class="col-sm-2 col-xs-2 paddl0 docimg"><img src="<?=admin_url();?>public/assets/upload/<?=($d->drimage)? $d->drimage : 'dummydr.jpg';?>" alt="<?=$d->fname.' '.$d->lname;?>">
                        </div>

                        <div class="col-sm-7 col-xs-10">
                            <div class="doc_nam">
                                <span><?=$d->fname.' '.$d->lname;?></span>
                                <ul>
                                    <li><?php $quastring='';
										$qu=$this->db->get_where('dr_qualifications',array('user_id'=>$d->id));
										foreach(@$qu->result() as $q)
											$quastring.=getQualificationName($q->qualification_id).', ';
										echo $quastring=rtrim($quastring,', ');
										?>
									</li>
                                    <li><?=$d->exp;?> years experience</li>
                                    <li><?php $splstring=''; $sp=$this->db->get_where('dr_specialization',array('user_id'=>$d->id))->result();
										foreach($sp as $s)
											$splstring.=getSpecilizationName($s->specialization_id).', ';
										echo $splstring=rtrim($splstring,', ');
										/* <?php } */ ?>
									</li>

                                </ul>
                            </div>
							
							<?php $practdata=$this->db->get_where('dr_practice',array('user_id'=>$d->id,'status'=>'1'));
							$practcount=$practdata->num_rows(); 
							$pract=$practdata->row(); 
							if(@$pract->type=='C')
								$institution_table='clinic';
							else if(@$pract->type=='H')
								$institution_table='hospital';
							
							$institutiondata=$this->db->get_where(@$institution_table, array('id'=>@$pract->institution_id,'status'=>'1'));
							$institutioncount=@$institutiondata->num_rows();
							$institution=@$institutiondata->row();
							
							?>
                            <div class="hosp_name">
                                <span><a href="#"><?=@$institution->name;?></a> <?php if($practcount > 1){ echo 'and '.($practcount-1).' more places'; } ?> </span>
                                <ul> 
                                    <li><img src="images/fac1.jpg" alt=""></li>
                                    <li><img src="images/images.jpg" alt=""></li>
                                    <li><img src="extra-images/blog-grid-img1.jpg" alt=""></li>
                                </ul>
                                <p>″He is very friendly, approachable and efficient doctor. ″ — Manish Shewani, visited for kidney stone removal</p>

                                <P><b>services</b></p>
                            </div>

                        </div>

                        <div class="col-sm-3 padd0">
                            <ul class="add_list">
                                <li><i class="fa fa-thumbs-o-up"></i>
                                    <span><b>93%</b> (15 votes)</span></li>
                                <li><i class="fa fa-map-marker"></i>
                                    <span><?=@$institution->address;?></span></li>
                                <li><i class="fa fa-money"></i>
                                    <span><?=@$pract->fee;?></span></li>
                                <li><i class="fa fa-clock-o"></i>
                                    <span>Available Today</span></li>
                            </ul>

                            <P>30 mins or less wait time assured</p>
                        </div>

                        <div class="col-sm-3 col-md-offset-3 padd0">

                            <ul class="doc_servic">
							<?php 
							
							$inst_service=$this->db->select('master_services.name')->join('master_services','master_services.id=instition_services.services_id')->get_where('instition_services',array('institution_id'=>@$pract->institution_id,'institution_type'=>@$pract->type))->result();
							//last_query();
							foreach($inst_service as $is){
							?>
                                <li><?=$is->name;?></li>
								<?php } ?>
                               <!-- <li>Open Prostatectomy</li>
                                <li>Ureteroscopy (URS)</li>
                                <li>Urologic Oncology</li>-->

                            </ul>
                        </div>
                        <div class="col-sm-3 padd0">
                            <ul class="doc_servic">
							<!-- <li>Urological Surgeon</li>
                                <li>Laparoscopic Surgeon</li>
                                <li>Cystoscopy</li>-->
                            </ul>
                        </div>
                        <div class="col-sm-3 padd0">
                            <ul class="doc_servic">
                                <!--<li>Genitourinary Surgery</li>
                                <li>Kidney Stone Treatment</li>
                                <li>Laparoscopy</li>
                                <li>Transurethral Incision</li>-->
                            </ul>
                        </div>
                        <div class="col-sm-12 padd0">

                            <a href="#" class="view_profile">Contact Hospital</a>
                            <a href="<?=base_url();?>doctor/<?=$d->id;?>" class="view_profile">View Profile</a> 
                            <button type="button" class="btn-lg view_profile getappointment" data-upchar-did='<?=$d->id;?>' data-toggle="modal" data-target="#myModal">Book Appointment</button>

                        </div>
                    </div>

                </div>
				
				<?php } ?>

				<?php 
				
				foreach($hospital as $institution){ 
				?>
				
												 <div class="col-sm-9  col-xs-12 box_sh_bg">                            <div class="">                                <div class="row">                                    <div class="col-sm-2">                                        <img src="https://www.48hourslogo.com/48hourslogo_data/2017/10/27/66748_1509119790.png" width="200" align="center">                                                                            </div>                                    <div class="col-sm-7 doc-info">                                        <h2><?=$institution->name;?></h2>                                        <h6>1 Dentist, 1 Implantologist</h6>                                        <br><br>                                        <span class="label label-default">Crowns and Bridges F</span>                                        <span class="label label-default">Metalic Crowns</span>                                        <span class="label label-default">Crowns and Bridges F</span>                                        <span class="label label-default">Metalic Crowns</span><br><br><br>                                        <p> <a href="#">view all 33 services</a></p>                                    </div>                                    <div class="col-sm-3">                                        <ul class="doc-info-details">                                            <li><a href="#"><i class="fa fa-thumbs-o-up"></i> 99% (1311 votes)</a></li>                                            <li><a href="#"><i class="fa fa-commenting-o"></i> 155 Feedback for 5 Doctors</a></li>                                            <li><a href="#"><i class="fa fa-map-marker"></i> <?=$institution->address;?></a></li>                                            <li><a href="#"><i class="fa fa-inr" ></i> ₹ 500 Fee</a></li>                                            <li><a href="#"><i class="fa fa-calendar-check-o" ></i> MON-SAT</a></li>                                            <li><a href="#"><i class="fa fa-clock-o" ></i> 9:00 AM-8:05 PM</a></li>                                                                                    </ul>                                        <div class="clearfix">                                                                                    </div>                                        <br>                                        <a href="#" class="btn btn-block bg-back">Book Appointment                                        </a href="#"><br>                                                                                                                   </div>                                                                    </div>                            </div>                        </div>
<?php } ?>
												 
            </div>

        </div>

    </section>

      <br/><br/>

    <?php include ('includes/footer.php'); ?>