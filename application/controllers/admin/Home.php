<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends Admin_Controller
{

    function __construct()
    {
        parent::__construct();
        if(!$this->ion_auth->in_group('admin'))
        {
            $this->postal->add('You are not allowed to visit the Categories page','error');
            redirect('admin');
        }
        $this->load->model('website_model');
        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
        $this->lang->load('form_validation', 'english');
        date_default_timezone_set("Asia/Ho_Chi_Minh");
    }

    public function index()
    {
        $this->data['item'] = $this->website_model->get_row();
        $this->form_validation->set_rules('website_name', 'Website name', 'trim|required');
        $this->form_validation->set_rules('title', 'Title', 'trim|required');
        $this->form_validation->set_rules('footer_content_1', 'Footer content 01', 'trim|required');
        $this->form_validation->set_rules('footer_content_2', 'Footer content 02', 'trim|required');
        if ($this->form_validation->run() == FALSE) {
            $this->render('admin/home/index_view');
        }
        else {
            if($this->input->post('submit')){
                $id = $this->input->post('id');
                $website_name = $this->input->post('website_name');
                $title = $this->input->post('title');
                $footer_content_1 = $this->input->post('footer_content_1');
                $footer_content_2 = $this->input->post('footer_content_2');
                $facebook = $this->input->post('facebook');
                $google_plus = $this->input->post('google_plus');
                $phone = $this->input->post('phone');
                $address = $this->input->post('address');
                $google_map = $this->input->post('google_map');
                $hotline = $this->input->post('hotline');
                $youtube = $this->input->post('youtube');
                $email = $this->input->post('email');
                $ad_video = $this->input->post('ad_video');
                $admin_email = $this->input->post('admin_email');
                $meta_keyword = $this->input->post('meta_keyword');
                $meta_description = $this->input->post('meta_description');
                $favicon = $this->input->post('favicon');
                $update_data = array('website_name' => $website_name,
                    'title' => $title,
                    'footer_content_1' => $footer_content_1,
                    'footer_content_2' => $footer_content_2,
                    'facebook' => $facebook,
                    'google_plus' => $google_plus,
                    'phone' => $phone,
                    'address' => $address,
                    'google_map' => $google_map,
                    'hotline' => $hotline,
                    'youtube' => $youtube,
                    'email' => $email,
                    'ad_video' => $ad_video,
                    'admin_email' => $admin_email,
                    'meta_keyword' => $meta_keyword,
                    'meta_description' => $meta_description,
                    'favicon' => $favicon,
                    'modified_date'=>date('Y-m-d'));
                if(!$this->website_model->update($id, $update_data))
                {             
                    $this->postal->add('Edit fail !','error');
                }else $this->postal->add('Edit successfully.','success');
                redirect('admin/home');
            }
        }
        
    }
}