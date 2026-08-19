<head>
    <style>
        .dataTables_wrapper .dataTables_paginate .paginate_button {
    box-sizing: border-box;
    display: inline-block;
    min-width: 1.5em;
    padding: 0.5em 1em;
    margin-left: 2px;
    text-align: center;
    text-decoration: none !important;
    cursor: pointer;
    *cursor: hand;
    color: #333 !important;
    border: 1px solid transparent;
    border-radius: 2px;
    background: white !important;
}
.boxDesign {
    background: #f5f5f5;
    color: #295771;
    font-weight: bold;
    border-radius: 5px;
    margin-top:32px;
    padding:10px;
}
.boxIcon {
    background: #295771;
    padding: 6px;
    border-radius: 23px;
    color: white;
    margin-right: 6px;

}
.StatusBTN {
    background: #10b323;
    color: white;
    border-radius: 23px;
    text-align: center;
    padding: 7px;
}
    </style>
</head>
<?php include ("assets/includes/header_hospital.php"); ?>
    <?php include ("assets/includes/leftmenu_hospital.php"); ?>
        <div class="pag_cstm">

            <div class="row">
                <div class="col-lg-12">
                    <div class="pag_cstm_panel" style="background: #295771;">
                        <div class="pag_cstm_panel_panel_ontent p-t-0">
                            <div class="row paddb40">
							<div class="col-sm-12 processsstep2">
							    							<a href='<?=base_url();?>hospitalpanel/adddoctor'><button type='submit' name='submit' style="letter-spacing: 1px;text-shadow: 3px -1px 2px #666;font-weight:900;color:white;background:#1fc61f;padding:9px 23px;border-radius: 23px;float: right;border:none;">Add Doctor</button></a>

							<h4>Manage Doctors </h4>
							

							</div>

                                <div class="col-sm-12 processsstep2">
                                    
                                                        	<?php foreach($clinic as $p){ ?>
                                <div class="col-md-4">
                                    <div class="col-md-12 boxDesign">
                                        
								<h5 style="text-transform: capitalize;"><b>Doctor Name :</b> <?=$p->fname.' '.$p->lname;?></h5>
								
										<h5><i class="fa fa-phone boxIcon" aria-hidden="true"></i> <?=$p->mobile;?></h5>
										<h5><i class="fa fa-envelope boxIcon" aria-hidden="true"></i> <?=$p->email;?></h5>
										
										<h5><i class="fa fa-calendar boxIcon" aria-hidden="true"></i>

										<!--<a href='<?=base_url()?>hospitalpanel/updatedoctor/<?=mybase64_encode($p->id);?>'>Update</a>-->

                      <?php if($p->p_status==1){ ?>
                        <a href='<?=base_url()?>hospitalpanel/updatedoctor/<?=mybase64_encode($p->id);?>'>Update Timing & Fee</a>
                      <?php  } 	elseif($p->p_status==0)  { ?>
                      <a href=#>Update Timing & Fee</a>
                      <?php } 	?>

										</h5>
									
										<h5 class="StatusBTN"><?=($p->p_status)? '<span>Approved Active</span>' : '<span>Approval Pending</span>';?></h5>
							</div>
                                </div>
	<?php } ?>
                                    
                    <!--this table for getting data from server dont delete this 
					 <table id="datatable" class="display" style="width:100%">
								<thead style="color:white;">
									<tr>
										<th> </th>
										<th></th>
										<th></th>
										<th></th>
										<th></th>
									</tr>
								</thead>
								
					</table>
-->

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
