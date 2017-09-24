<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends Public_Controller {
	function __construct() {
        // 
		parent::__construct();
		$this->load->helper('url');
		$this->load->database();
		$this->load->library('session');
		$this->load->helper('language');
		$this->load->model('slider_model');
		$this->load->model('category_model');
		$this->load->model('news_model');
		$this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
		$input['where'] = array('status' => 1);
		$input['order'] = array('id','ASC');
		$this->data["sliders"] = $this->slider_model->get_list($input);
	}

	public function index()
	{	
		$this->load->model('home_model');
		$input['where'] = array('id' => 1);
		$this->data["home"] = $this->home_model->get_row($input);
		// get list product of home page
		$input_pro['where']  = array('level' => 0);
		$input_pro['order']  = array('modified_date', 'desc');
		$this->data["catgories"] = $this->category_model->get_list($input_pro);
		// get 7 items of news model
		$input_news['limit'] = array('7' ,'0');
		$input_news['order'] = array('modified_date','DESC');
		$this->data["news"] = $this->news_model->get_list($input_news);
		$this->render('user/home_view');
	}
}
