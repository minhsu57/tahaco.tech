<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Slider_model extends MY_Model
{

    function __construct()
    {
        parent::__construct();
        // pct change
        //$this->table = 'slider';
        $this->table = 'slider';
        // end pct change
    }

    public function get_list_slider_category(){
    	$rows = $this->db->query('select c.name category_name, s.* from category c, slider s where c.id = s.category_id');
        return $rows->result();
    }

    public function get_slider_category_by_id($id){
        $rows = $this->db->query('select c.name category_name, s.* from category c, slider s where c.id = s.category_id and s.id = '.$id);
        return $rows->row();
    }
}