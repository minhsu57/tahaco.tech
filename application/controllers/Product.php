<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends Public_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	// init function
    function __construct() {
        // call to roots' init function
        parent::__construct();
        $this->load->helper('url');
       	$this->load->database();
       	$this->load->library('session');
       	$this->load->helper('language');
       	$this->language_slug = $this->session->set_language;
		$this->product_id = (int)$this->uri->segment(1);
		$this->data['product'] = $this->product_model->get_product($this->product_id, $_SESSION["set_language"]);
		$this->data['product'] = get_object_vars($this->data['product']);
		$this->data['product_images'] = $this->product_model->get_all_product_image($this->product_id);
    }
    
	public function index()
	{	
		
		$this->render('user/product_view');
		//$this->load->view('templates/_parts/public_master_footer_view');
	}
	public function detail(){
		$this->product_id = (int)$this->uri->segment(1);
		$this->data['product_images'] = $this->product_model->get_all_product_image($this->product_id);
        $this->render('user/detail_view.php');
	}
}
