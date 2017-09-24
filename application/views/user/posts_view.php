<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<div id="container" class="container sub-page">
	<div class="main-sub-content article">		
		<div class="col-md-9 col-lg-9 left-content">
			<h1><?php echo $item->title; ?></h1>		
			<div class="social-button">
				<!-- Your like button code -->
				<div class="fb-like" data-href="https://www.facebook.com/D%E1%BB%B1-%C3%A1n-c%C4%83n-h%E1%BB%99-H%C3%A0-%C4%90%C3%B4-Riverside-287920418307316/?hc_ref=PAGES_TIMELINE&fref=nf" data-layout="button_count" data-action="recommend" data-show-faces="false" data-share="true" data-width="250"></div>

				<!-- Google + button -->
				<div data-size="medium" class="g-plusone" data-href ="https://plus.google.com/105439840244004612792" data-annotation="bubble" data-width="250"></div>
			</div>
			
			<?php echo $item->content; ?>
			<div class="history_article">Đăng bởi : <b>hadoriverside.org</b> | Ngày cập nhật : <?php echo $item->created_date; ?></div>
		</div>
		<div class="col-sm-12 col-md-3 col-lg-3" style="height: 1000px"><?php $this->load->view('templates/_parts/public_master_sidebar_view'); ?></div>

	</div>
</div>
<!-- map -->
		<section>
			<div itemscope itemtype ="http://schema.org/Movie">
				<div id="map" style="width:100%;height:450px; margin-bottom: 20px" class="col-lg-12"></div>

				<script>
					function myMap() {
						var myCenter = new google.maps.LatLng(11.087386, 107.036523);
						var mapCanvas = document.getElementById("map");
						var mapOptions = {center: myCenter, zoom: 15, scrollwheel: false, alt:"căn hộ hà đô riverside"};
						var map = new google.maps.Map(mapCanvas, mapOptions);
						var marker = new google.maps.Marker({position:myCenter});
						marker.setMap(map);

						var infowindow = new google.maps.InfoWindow({
							content: "Căn hộ hà đô riverside"
						});
					}
				</script>

				<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA28Z3iKdILw1QtJk0P_I-R_hhVDYp6PA8&callback=myMap"></script>
			</div>
		</section>
