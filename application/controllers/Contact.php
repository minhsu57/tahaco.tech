<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contact extends Public_Controller {

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
       	$this->load->model('category_model');
    }
    
	public function index()
	{	
		// get content of contact page
        $input['where'] = array('id' => 'lien-he');
        $this->data['item'] = $this->category_model->get_row($input);
        $this->data['website']->meta_keyword = $this->data['item']->meta_keyword;
        $this->data['website']->meta_description = $this->data['item']->meta_description;
		$this->render('user/contact_view');
	}
}
