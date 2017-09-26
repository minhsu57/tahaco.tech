
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog modal-md">
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title" id="modal_title">Modal Header</h4>
        </div>
        <div class="modal-body" id="modal_content">
            ...
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo $this->lang->line('thoat_lang'); ?></button>
        </div>
    </div>

</div>
</div>
<!-- end modal -->
<div id="footer_bottom" class="footer-bottom">
    <div class="container">
       <div class="">
        <div class="">
            <div class="col-md-4 col-lg-4">
                <div class="">
                    <?php echo $website->footer_content_1; ?>
                </div>  
            </div>
            <div class="col-md-3 col-lg-3">
                <div class="">
                    <?php echo $website->footer_content_2; ?>
                </div>  
            </div>
            <div class="col-md-5 col-lg-5">
                <div class="">
                    <p><strong style="font-size: 20PX;">FACEBOOK</strong></p>
                    <div class="fb-page" data-href="<?php echo $website->facebook; ?>" data-small-header="false" data-adapt-container-width="true"
                        data-hide-cover="false" data-show-facepile="true">
                        <blockquote cite="<?php echo $website->facebook; ?>" class="fb-xfbml-parse-ignore">
                            <a href="<?php echo $website->facebook; ?>"><?php echo $website->website_name; ?></a>
                        </blockquote>
                    </div>
                </div> 
            </div>
        </div>
    </div>
    <script type="text/javascript">

        jQuery(function($) {

  // Function which adds the 'animated' class to any '.animatable' in view
  var doAnimations = function() {

    // Calc current offset and get all animatables
    var offset = $(window).scrollTop() + $(window).height(),
    $animatables = $('.animatable');
    
    // Unbind scroll handler if we have no animatables
    if ($animatables.size() == 0) {
      $(window).off('scroll', doAnimations);
  }

    // Check all animatables and animate them if necessary
    $animatables.each(function(i) {
       var $animatable = $(this);
       if (($animatable.offset().top + $animatable.height() - 20) < offset) {
        $animatable.removeClass('animatable').addClass('animated');
    }
});

};

  // Hook doAnimations on scroll, and trigger a scroll
  $(window).on('scroll', doAnimations);
  $(window).trigger('scroll');

});
</script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-97094860-1', 'auto');
  ga('send', 'pageview');

</script>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.10";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>