<?php
	defined('BASEPATH') OR exit('No direct script access allowed');

	Class User_model extends MY_Model
	{
		function __construct()
	    {
	        parent::__construct();
	    }
	    
	    function get_post($post_type, $language_slug){
	    	$rows = $this->db->query('select pt.short_content, pt.content from posts p, posts_translations pt where p.id = pt.posts_id and p.type = '.'"'.$post_type.'" and pt.language_slug = '.'"'.$language_slug.'"');
        	return $rows->row();
	    }
	}

?>