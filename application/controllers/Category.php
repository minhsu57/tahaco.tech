<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Category extends Public_Controller {
    function __construct() {
        parent::__construct();
        $this->load->helper('url');
       	$this->load->database();
        
        $this->load->model('category_model');
       	$this->load->model('news_model');

        // get list news for sidebar
        $input_new_news['order'] = array('modified_date', 'asc');
        $input_new_news['limit'] = array(7, 0);
        $this->data['news'] = $this->news_model->get_list($input_new_news);
    }
    
	public function index($id)
	{
        // get content of category
        $input['where'] = array("id" => $id);
        $this->data['item'] = $this->category_model->get_row($input);
        $this->data['website']->meta_keyword = $this->data['item']->meta_keyword;
        $this->data['website']->meta_description = $this->data['item']->meta_description;
        $this->render('user/category_view');      
	}

    public function product()
    {
        // get content of product page
        $input['where'] = array("id" => 'product');
        $this->data['item'] = $this->category_model->get_row($input);
        $this->data['website']->meta_keyword = $this->data['item']->meta_keyword;
        $this->data['website']->meta_description = $this->data['item']->meta_description;
        // get list product of product page
        $input_pro['where']  = array('level' => 0);
        $input_pro['order']  = array('modified_date', 'desc');
        $this->data["products"] = $this->category_model->get_list($input_pro);
        $this->render('user/product_view');      
    }
}
