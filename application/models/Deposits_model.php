<?php
	defined('BASEPATH') OR exit('No direct script access allowed');

	Class Deposits_model extends MY_Model
	{
		function __construct()
	    {
	        parent::__construct();
	        $this->table = 'deposits';
	    }
	}

?>