<div class="sidebar">
	<div class="row row-div col-lg-12"><label>TIN TỨC MỚI</label></div>
	<?php foreach ($news as $item) {
	// get value of src img tag
    preg_match('@src="([^"]+)"@' , $item->image, $match);
    $image = array_pop($match); ?>
	<div class="row row-article">
		<div class="col-xs-4 col-md-2 col-lg-4">
			<div class="news_image  hidden-md">
				<a href="<?php echo base_url('tin-tuc/'.$item->id.'-'.create_slug($item->title)); ?>"><img src="<?php echo $image; ?>" class="img-thumbnail" alt="<?php echo $item->title; ?>"></a>
			</div>
			<div class="visible-md">-</div>			
		</div>
		<div class="col-xs-8 col-md-10 col-lg-8 pd-lr-0">			
			<div class="news_title"><span><a href="<?php echo base_url('tin-tuc/'.$item->id.'-'.create_slug($item->title)); ?>" style="color: #333"><?php echo $item->title; ?></a></span></div>
		</div>
	</div>
	<?php } ?>
	<!-- <div class="row row-div col-lg-12"><label>VIDEO</label></div> -->
	<div class="row row-div col-lg-12">
		<div class="textwidget">
			<?php echo $website->ad_video; ?>
		</div>
	</div>
</div>