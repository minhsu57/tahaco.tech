<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!DOCTYPE html>
<html lang="vi-VN">
<head>
	<?php $this->load->view('templates/_parts/public_master_library_view'); ?>
</head>
<body>
<div class="content-section">
	<?php $this->load->view('templates/_parts/public_master_header_view'); ?>

	<?php echo $the_view_content; ?>

	<?php $this->load->view('templates/_parts/public_master_footer_view'); ?>
</div>
	
</body>
</html>