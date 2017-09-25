<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div id="header-1">
	<div class="container content">
		<div class="pull-left">
			<span class="menu-item"><a><?php echo $website->address; ?></a></span>
		</div>
		<div class="pull-right hidden-xs">
			<span class="menu-item"><a href="<?php echo $website->facebook ?>" target="_blank"><li class="fa fa-facebook fa-1-5"></li></a></span>
			<span class="menu-item"><a href="<?php echo $website->google_plus ?>" target="_blank"><li class="fa fa-google-plus fa-1-5"></li></a></span>
		</div>
	</div>	
</div><!--Joom!fish V2.0.4 (Lightning)-->

<nav class="navbar navbar-default ha-header" id="header-2">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header agent-section">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a href="<?php echo base_url(); ?>"><img class="pull-left" src="<?php echo public_helper('upload/images/tahaco_logo.jpg') ?>" style="width: 70px;" alt="<?php echo $page_title; ?>">
			<div class="pull-left">
				<span class="logo_name"><?php echo $website->website_name; ?></span>
				<div class="logo_phone"><span class="hotline_title">Hotline: </span><span class="hotline"><?php echo $website->hotline; ?></span></div>	</a>			
			</div>
				
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="<?php echo base_url(); ?>"><b>TRANG CHỦ</b></a></li>
				<li><a href="<?php echo base_url(); ?>san-pham"><b>SẢN PHẨM</b></a></li>
				<?php foreach ($categories as $key => $value) { ?>
					<li><a href="<?php echo base_url('category/'.$value->id); ?>"><b><?php echo $value->name; ?></b></a></li>
				<?php } ?>
				<li><a href="<?php echo base_url(); ?>tin-tuc"><b>TIN TỨC</b></a></li>
				<li><a href="<?php echo base_url(); ?>lien-he"><b>LIÊN HỆ</b></a></li>
			</ul>
		</div><!-- /.navbar-collapse -->
	</div><!-- /.container-fluid -->
</nav>
<script type="text/javascript">
	// Script for top Navigation Menu
    jQuery(window).bind('scroll', function () {
      if (jQuery(window).scrollTop() > 10) {
        jQuery('#header-2').addClass('navbar-fixed-top').removeClass('topnavbar');
        jQuery('body').addClass('bodytopmargin').removeClass('bodynomargin');
      } else {
        jQuery('#header-2').removeClass('navbar-fixed-top').addClass('topnavbar');
        jQuery('body').removeClass('bodytopmargin').addClass('bodynomargin');
      }
    });
</script>







