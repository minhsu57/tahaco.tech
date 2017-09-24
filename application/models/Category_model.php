<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Category_model extends MY_Model
{
    public $table = 'category';
    public function __construct()
    {
        parent::__construct();
        $this->table = 'category';
    }
    public function listMenuLevel1(){
    	$rows = $this->db->query('select ct.name , c.id from category c, category_translation ct where c.id = ct.category_id and ct.language_slug = '.'"'.$_SESSION["set_language"].'" and (c.parent is NULL or c.parent = 0)');
        return $rows->result();
    }
    public function listChildMenus($id){
    	
    	$rows = $this->db->query('select ct.* from category c, category_translation ct where c.id = ct.category_id and ct.language_slug = '.'"'.$_SESSION["set_language"].'" and c.parent = '.'"'.$id.'"');
        return $rows->result();
    }
    public function getChildCategoryId($id){        
        $rows = $this->db->query('select c.id from category c where c.parent = '.'"'.$id.'"');
        return $rows->row();
    }

    public function delete_category_id($id){
        $query = $this->db->query('select level from category where id = '.'"'.$id.'" and level > -1');
        if($query->num_rows() == 1){
            $this->db->query('delete from category where id = '.'"'.$id.'"');
            $return = $this->db->affected_rows() == 1;
            if($return) return true; else return false;
        }else return false;        
    }
    
}