

                <div class="footer">
                    <div class="copyright">
                        <p class="">
                            <span>Copyright <span class="copyright">©</span> 2018 </span>
                            <span>Upchaar</span>.
                            <span>All rights reserved. </span>

                        </p>

                    </div>
                </div>
            </div>
            <!-- END PAGE CONTENT -->
        </div>
        <!-- END MAIN CONTENT -->
        <!-- BEGIN BUILDER -->

        <!-- END BUILDER -->
    </section>

    <a href="#" class="scrollup"><i class="fa fa-angle-up"></i></a>
    <script src="assets/js/jquery-3.1.0.min.js"></script>
    <script src="assets/js/jquery-migrate-3.0.0.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/application.js"></script>
    <!-- Main Application Script -->
    <script src="assets/js/layout.js"></script>
	<script>
 $(window).load(function(){        
   $('#myModal').modal('show');
    }); 
</script>

<script>

(function ( $ ) {
 
    $.fn.imagePicker = function( options ) {
        
        // Define plugin options
        var settings = $.extend({
            // Input name attribute
            name: "",
            // Classes for styling the input
            class: "form-control btn btn-default btn-block",
            // Icon which displays in center of input
            icon: "glyphicon glyphicon-plus"
        }, options );
        
        // Create an input inside each matched element
        return this.each(function() {
            $(this).html(create_btn(this, settings));
        });
 
    };
 
    // Private function for creating the input element
    function create_btn(that, settings) {
        // The input icon element
        var picker_btn_icon = $('<i class="'+settings.icon+'"></i>');
        
        // The actual file input which stays hidden
        var picker_btn_input = $('<input type="file" name="'+settings.name+'" />');
        
        // The actual element displayed
        var picker_btn = $('<div class="'+settings.class+' img-upload-btn"></div>')
            .append(picker_btn_icon)
            .append(picker_btn_input);
            
        // File load listener
        picker_btn_input.change(function() {
            if ($(this).prop('files')[0]) {
                // Use FileReader to get file
                var reader = new FileReader();
                
                // Create a preview once image has loaded
                reader.onload = function(e) {
                    var preview = create_preview(that, e.target.result, settings);
                    $(that).html(preview);
                }
                
                // Load image
                reader.readAsDataURL(picker_btn_input.prop('files')[0]);
            }                
        });

        return picker_btn
    };
    
    // Private function for creating a preview element
    function create_preview(that, src, settings) {
        
            // The preview image
            var picker_preview_image = $('<img src="'+src+'" class="img-responsive img-rounded" />');
            
            // The remove image button
            var picker_preview_remove = $('<button class="btn btn-link"><small>Remove</small></button>');
            
            // The preview element
            var picker_preview = $('<div class="text-center"></div>')
                .append(picker_preview_image)
                .append(picker_preview_remove);

            // Remove image listener
            picker_preview_remove.click(function() {
                var btn = create_btn(that, settings);
                $(that).html(btn);
            });
            
            return picker_preview;
    };
    
}( jQuery ));

$(document).ready(function() {
    $('.img-picker').imagePicker({name: 'images'});
})
</script>
</body>

