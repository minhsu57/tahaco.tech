<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!DOCTYPE html>
<html>
<head>
	<?php $this->load->view('templates/_parts/admin_master_library_view'); ?>
</head>
<body>
	<?php 
		$this->load->view('templates/_parts/admin_master_header_view');
		echo $the_view_content;

		$this->load->view('templates/_parts/admin_master_footer_view'); ?>
	
</body>
</html>