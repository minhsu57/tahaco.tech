<?php defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends CI_Controller
{
    public $website;
    protected $data = array();
    protected $langs = array();
    protected $default_lang;
    protected $current_lang;
    function __construct()
    {
      parent::__construct();

      $this->load->model('website_model');
      $this->website = $this->website_model->get_row();
      $this->data['website'] = $this->website;

        // load list data of category
      $this->load->model('category_model'); 
      $cate_condition['where'] = array('level' => '1');
      
      $this->data['categories'] = $this->category_model->get_list($cate_condition);      

       // Get the default page description and title from the database
      $this->data['page_title'] = $this->website->title;
      $this->data['meta_keyword'] = $this->website->meta_keyword;
      $this->data['meta_description'] = $this->website->meta_description;
      $_SESSION['KCFINDER'] = array(
        'disabled' => false
        );

  }

  protected function render($the_view = NULL, $template = 'master')
  {
    if($template == 'json' || $this->input->is_ajax_request())
    {
     header('Content-Type: application/json');
     echo json_encode($this->data);
 }
 elseif(is_null($template))
 {
     $this->load->view($the_view,$this->data);
 }
 else
 {
     $this->data['the_view_content'] = (is_null($the_view)) ? '' : $this->load->view($the_view, $this->data, TRUE);
     $this->load->view('templates/' . $template . '_view', $this->data);
 }
}
}

class Admin_Controller extends MY_Controller
{

	function __construct()
	{
		parent::__construct();
		$this->load->library('ion_auth');
        $this->load->library('postal');
        $this->load->helper('url');
        if (!$this->ion_auth->logged_in())
        {
            $_SESSION['redirect_to'] = current_url();
			//redirect them to the login page
            redirect('admin/user/login', 'refresh');
        }
        $current_user = $this->ion_auth->user()->row();
        $this->user_id = $current_user->id;
        $this->data['current_user'] = $current_user;
        $this->data['current_user_menu'] = '';
        if($this->ion_auth->in_group('admin'))
        {
         $this->data['current_user_menu'] = $this->load->view('templates/_parts/user_menu_admin_view.php', NULL, TRUE);
     }

     $this->data['page_title'] = $this->website->title;
     $this->data['page_description'] = $this->website->meta_description;
 }
 protected function render($the_view = NULL, $template = 'admin_master')
 {
  parent::render($the_view, $template);
}
}

class Public_Controller extends MY_Controller
{
    function __construct()
    {
        parent::__construct();
        // $this->load->model('banned_model');
        // $ips = $this->banned_model->fields('ip')->set_cache('banned_ips',3600)->get_all();
        // $banned_ips = array();
        // if(!empty($ips))
        // {
        //     foreach($ips as $ip)
        //     {
        //         $banned_ips[] = $ip->ip;
        //     }
        // }
        // if(in_array($_SERVER['REMOTE_ADDR'],$banned_ips))
        // {
        //     echo 'You are banned from this site.';
        //     exit;
        // }
        // if($this->website->status == '0') {
        //     $this->load->library('ion_auth');
        //     if (!$this->ion_auth->logged_in()) {
        //         redirect('offline', 'refresh', 503);
        //     }
        // }
    }

    protected function render($the_view = NULL, $template = 'public_master')
    {
        /* load a generic language file (this language file will be used across many pages - like in the footer of pages) */
        //$this->load->language('app_lang',$this->langs[$this->current_lang]['language_directory']);

        /* you can load a specific language file inside the controller constructor with $this->language_file = ''.
        The file will be loaded from the app_files directory inside specific language directory */
        if(!isset($this->language_file))
        {
            $uri = explode('/', uri_string());
            $calling_class = get_class($this);
            $url = array();
            foreach ($uri as $key => $value) {
                if(trim(strlen($value)>0))
                {
                    if (is_numeric($value) || ($value==$this->current_lang)) unset($uri[$key]);
                    else $url[$key] = str_replace('-', '_', $value);
                }
            }

            $methods = debug_backtrace();

            foreach($methods as $method)
            {
                if($method['function']!=='render' && method_exists($calling_class,$method['function']))
                {
                    $current_method = $method['function'];
                }
            }

            $method_key = array_search($current_method, $url);
            $language_file_array = array_slice($url, 0, ($method_key + 1));

            $calling_class = strtolower($calling_class);
            if (!in_array($calling_class, $language_file_array)) $language_file_array[] = $calling_class;
            if (!in_array($current_method, $language_file_array)) $language_file_array[] = $current_method;
            $this->language_file = implode('_', $language_file_array);
        }

        /* verify if a language file specific to the method exists. If it does, load it. If it doesn't, simply do not load anything */
        // if(file_exists(APPPATH.'language/'.$this->langs[$this->current_lang]['language_directory'].'/app_files/'.strtolower($this->language_file).'_lang.php')) {
        //     $this->lang->load('app_files/'.strtolower($this->language_file).'_lang', $this->langs[$this->current_lang]['language_directory']);
        // }

        //$this->load->library('menus_creator');
        //$this->data['top_menu'] = $this->menus_creator->get_menu('top-menu',$this->current_lang,'bootstrap_menu');
        parent::render($the_view, $template);
    }
}
