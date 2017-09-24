 <?php
 defined('BASEPATH') OR exit('No direct script access allowed');
 ?>

 <div class="sub-page container" style="margin-top: 100px">
 	<div class="fb-page" data-href="<?php echo $website->facebook; ?>" data-height="160" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/5tshopvn/" class="fb-xfbml-parse-ignore"><a href="<?php echo $website->facebook; ?>"><?php echo $website->website_name; ?></a></blockquote></div>	
 	<div class="content"><?php echo $item->description; ?></div>
 	
 </div>
 <!--Load google map-->
 <div class="container"> <?php $this->load->view('user/google_map_view') ?></div>
