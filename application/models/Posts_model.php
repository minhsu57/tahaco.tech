<?php
	defined('BASEPATH') OR exit('No direct script access allowed');

	Class Posts_model extends MY_Model
	{
		function __construct()
	    {
	        parent::__construct();
	        $this->table = 'posts';
	    }
	}

?>