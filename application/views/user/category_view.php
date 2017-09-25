<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div id="container" class="container sub-page">
	<div class="main-content article">		
		<div class="col-md-9 col-lg-9 left-content">
			<h1><?php echo $item->name; ?></h1>
			<div class="social-button">
            <!-- Your like button code -->
            <div class="fb-like" data-href="<?php echo $website->facebook; ?>" data-layout="standard" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
            </div>		
			<div><?php echo $item->description; ?></div>
			<div class="history_article">Đăng bởi : <b><?php echo $website->website_name; ?></b> | Ngày cập nhật : <?php $date = new DateTime($item->modified_date); echo $date->format('d-m-Y'); ?></div>
		</div>
		<div class="col-sm-12 col-md-3 col-lg-3" style="min-height: 1100px"><?php $this->load->view('user/sidebar_view'); ?></div>
	</div>
</div>
s