<?php include ("assets/includes/header.php"); ?>
    <?php include ("assets/includes/leftmenu.php"); ?>
        <div class="pag_cstm">

            <div class="row">
                <div class="col-lg-12">
                    <div class="pag_cstm_panel">
                        <div class="pag_cstm_panel_panel_ontent p-t-0">
                            <div class="row paddb40">

                                <div class="col-sm-12 processsstep2">
                                    <h4>Clinic basic details</h4>
                                </div>

                                <div class="col-sm-5 processsstep2">

                                    <div class="col-sm-12" style="padding: 0px;">
                                        <label>Clinic name</label>

                                        <input type="text" name="name" class="form-control" placeholder="Type clinic name">
                                    </div>

                                    <div class="col-sm-12 padding0">
                                        <label>City</label>
                                        <select class="form-control">
                                            <option>Type & select city</option>
                                            <option>DElhi</option>
                                            <option>Bnaglore</option>

                                        </select>
                                    </div>

                                    <div class="col-sm-12 padding0">
                                        <label>Locality</label>
                                        <select class="form-control">
                                            <option>Select locality</option>
                                            <option>Yamuna Vihar</option>

                                        </select>
                                    </div>

                                    <div class="col-sm-8 click_step2 mrt30 padding0">
                                        <a class="backiocn" href="connect_clinic_step4.php"><i class="fa fa-long-arrow-left" aria-hidden="true"></i>Back</a>
                                    </div>
                                    <div class="col-sm-4 click_step2 mrt20 padding0">
                                        <a href="practice_suggestion_hospital_step6.php">
                                            <button class="continue2">Continue</button>
                                        </a>

                                    </div>

                                </div>

                                <div class="col-sm-5 hoslist_he mrgt30">
                                    <p>Basic details about your practice helps patients reach you easily for appointment booking and inquiries.</p>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <?php include ("assets/includes/footer.php"); ?>