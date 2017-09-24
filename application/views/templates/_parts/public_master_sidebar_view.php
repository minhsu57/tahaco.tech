<div class="sidebar">
	<div class="row col-lg-12"><label>TIN TỨC MỚI</label></div>
	<?php foreach ($news as $new) { ?>
	<div class="row">
		<div class="col-xs-4 col-md-2 col-lg-4">
			<div class="news_image">
				<a href="<?php echo base_url('tin-tuc/'.$new->id.'-'.create_slug($new->title)); ?>.html"><?php preg_match('@src="([^"]+)"@', $new->content, $matches); if(count($matches) > 0) echo '<img '.$matches[0].'" class="img-thumbnail" style="border:none"> '; else echo '<img src="'.public_helper('images/news.jpg').'" class="img-thumbnail">'; ?></a>
			</div>			
		</div>
		<div class="col-xs-8 col-md-10 col-lg-8 pd-lr-0">			
				<div class="news_title"><span><a href="<?php echo base_url('tin-tuc/'.$new->id.'-'.create_slug($new->title)); ?>.html" style="color: #333"><?php echo $new->title; ?></a></span></div>
		</div>
	</div>
	<?php } ?>
	<div class="row col-lg-12"><label>VIDEO</label></div>
	<div class="row col-lg-12">
		<div class="textwidget">
			<iframe style="min-width:100%; height:315px" src="https://www.youtube.com/embed/Cjf-mcQ9zVc?rel=0&wmode=transparent" frameborder="0" allowfullscreen=""></iframe>
		</div>
	</div>
</div>