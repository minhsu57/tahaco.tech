<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<div id="container" class="container sub-page">
    <div class="main-sub-content article">      
        <div class="col-md-9 col-lg-9 left-content">
            <h1>TIN TỨC</h1>
            <div class="social-button">
            <!-- Your like button code -->
            <div class="fb-like" data-href="<?php echo $website->facebook; ?>" data-layout="standard" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
            </div>
            <?php foreach ($items as $item) { // get value of src img tag
            preg_match('@src="([^"]+)"@' , $item->image, $match);
            $image = array_pop($match); ?>              
                
                <div class="article col-sm-12 pd-lr-0" style="margin-bottom: 50px;">
                    <h2 class="title_news col-sm-12 pd-lr-0"><a href="<?php echo base_url('tin-tuc/'.$item->id.'-'.create_slug($item->title)); ?>.html"><?php echo $item->title; ?></a></h2>
                    <div class="history_article col-sm-12 pd-lr-0">Đăng bởi : <b><?php echo $website->website_name; ?></b> | Ngày đăng: <?php echo $item->modified_date; ?></div>
                    <div class="image_news col-sm-12 pd-lr-0"><a href="<?php echo base_url('tin-tuc/'.$item->id.'-'.create_slug($item->title)); ?>.html"><img src="<?php echo $image; ?>" alt="<?php echo $item->title; ?>"></a></div>
                    <div class="short_content_news col-sm-12 pd-lr-0"><?php echo $item->short_content.'[....]'; ?></div>
                </div>
            <?php } ?> 
            <div class="row">
                <div class="col-md-12 text-center">
                    <?php echo $pagination; ?>
                </div>
            </div> 
        </div>
        <div class="col-sm-12 col-md-3 col-lg-3" style="height: 1000px"><?php $this->load->view('user/sidebar_view'); ?></div>
    </div>
</div>
