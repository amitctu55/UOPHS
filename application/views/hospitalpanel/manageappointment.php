<head>
    <style>
   
.dataTables_wrapper .dataTables_paginate .paginate_button.disabled, .dataTables_wrapper .dataTables_paginate .paginate_button.disabled:hover, .dataTables_wrapper .dataTables_paginate .paginate_button.disabled:active {
    cursor: default;
    color: #666 !important;
    border: 1px solid transparent;
    background: #e4e4e4;
    box-shadow: none;
}

.dataTables_wrapper .dataTables_length, .dataTables_wrapper .dataTables_filter, .dataTables_wrapper .dataTables_info, .dataTables_wrapper .dataTables_processing, .dataTables_wrapper .dataTables_paginate {
    color: #efefef;
}
.small-box {
    background: #16ba41;
    padding: 16px;
    border-radius: 9px;
}
    </style>
    </head>
<?php include ("assets/includes/header_hospital.php"); ?>
    <?php include ("assets/includes/leftmenu_hospital.php"); ?>
        <div class="pag_cstm">

            <div class="row">
                <div class="col-lg-12">
                    <div class="pag_cstm_panel">
                       
                        <div class="pag_cstm_panel_panel_ontent p-t-0">
                             <h2 class="text-center">Manage Appointment </h2>
                            <div class="row paddb40">
						

		
		
		
		
							
                                <div class="col-sm-12 processsstep2">
                                   
                                   <div class="col-md-10 col-md-offset-1">
                                    <form>
                                        <input style="border-radius: 23px;padding:0px 23px;" name='d' placeholder="Filter By Date" >
                                        
                                        <button type="submit" style="float:right;color: #15ab3c;font-size: 22px;     padding: 8px 23px;background: none;        margin: -40px 4px;border-radius: 0px 23px 23px 0px;    border: none;"><i class="fa fa-search" aria-hidden="true"></i></button>
                                    
                               
                                   </form>
                                   </div>
                            							
		<?php foreach($appointments as $p){ ?>				     
        <div class="col-lg-3" style="margin-bottom:21px;">
          <!-- small box -->
          
          <div class="small-box">
            <div class="inner">
                <a style="background: #15ab3c;padding: 4px 16px;color: white;border-radius: 23px;
" href="#"><?=$p['appointment']->appointment_id;?></a>

 <a style="float:right;color:white;font-size:15px;font-weight:bold;"><?=$p['appointment']->appointment_date;?></a>
 
              <h5 class="text-center">
                  
                  <a style="color: white;font-weight: bold;font-size:15px;" href='<?=base_url();?>doctor/<?=$p['appointment']->doctor_id;?>' target="_blank"><?=prefixdr($p['institute']->fname).' '.$p['institute']->lname;?></a>
                  </h5>
             
             <h6 class="text-center">Booked For </h6>

              <h5 class="text-center"><a style="color: black;"  href='<?=base_url();?>patient/<?=$p['appointment']->appointment_id;?>'><?=$p['appointment']->patient_name;?></a></h5>
              
            
             
              <h5><i class="fa fa-clock-o" aria-hidden="true"></i> <?=$p['appointment']->from_timing.' - '.$p['appointment']->to_timing;?></h5>
              
              <a href="#" style="color:white;">Paid <?=$p['appointment']->amount;?> ₹</a>
              
                <a style="float: right;background: #15ab3c;padding: 3px 16px;color: white;font-weight: bold;border-radius: 4px;box-shadow: 0px -1px 4px #0c6824;" href="#" style="float:right;"> <?php if($p['appointment']->payment_status=='DONE'){echo "<span style='color: red'>Paid</span>";}else if($p['appointment']->payment_status=='UNPAID'){echo'Not Paid';} ?></a>
            </div>
  
      
          </div>
        </div>
        <?php } ?>
        
                                   
					
					
					
                                </div>
								

                               <!-- <div class="col-sm-5 hoslist_he mrgt30">
                                  
                                        <p>
                                            This information helps us perform critical checks to ensure that only licensed and genuine medical practitioners are listed on Upchaar . Your profile will get a “Verified” badge on verification. Doctors with verified profiles get 95% more patient views on Upchaar.</p>
                                   
                                </div>-->

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <?php include ("assets/includes/footer_hospital.php"); ?>
		<link rel="stylesheet" type="text/css"  href='https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css'>
		<script src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>
		<script>
		$(document).ready(function() {
			$('#datatable').DataTable();
		} );
		</script>