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
        date_default_timezone_set("Asia/Ho_Chi_Minh");
    }

    public function index()
    {
        $this->data['item'] = $this->website_model->get_row();

        $this->form_validation->set_rules('title', 'Tiêu đề chưa hợp lệ', 'trim|required');
        if ($this->form_validation->run() == FALSE) {
            
        }
        else {
            if($this->input->post('submit')){
                $id = $this->input->post('id');
                $title = $this->input->post('title');
                $page_title = $this->input->post('page_title');
                $facebook = $this->input->post('facebook');
                $google = $this->input->post('google');
                $phone = $this->input->post('phone');
                $address = $this->input->post('address');
                $hotline = $this->input->post('hotline');
                $gallery = $this->input->post('gallery');
                $sale = $this->input->post('sale');
                $youtube = $this->input->post('youtube');
                $support = $this->input->post('support');
                $contact_email = $this->input->post('contact_email');
                $admin_email = $this->input->post('admin_email');
                $meta_keyword = $this->input->post('meta_keyword');
                $meta_description = $this->input->post('meta_description');
                $footer_link = $this->input->post('footer_link');
                $modified_date = $this->input->post('modified_date');
                $modified_by = $this->input->post('modified_by');
                $update_data = array('title' => $title, 'page_title' => $page_title, 'facebook' => $facebook, 'google' => $google, 'phone' => $phone, 'address' => $address, 'hotline' => $hotline, 'gallery' => $gallery, 'sale' => $sale, 'youtube' => $youtube, 'support' => $support, 'contact_email' => $contact_email, 'admin_email' => $admin_email, 'meta_keyword' => $meta_keyword, 'meta_description' => $meta_description, 'footer_link' => $footer_link, 'modified_date'=>date('Y-m-d'), 'modified_by'=>$modified_by);
                if(!$this->website_model->update($id, $update_data))
                {             
                    $this->postal->add('Chỉnh sửa thất bại !','error');
                }else $this->postal->add('Chỉnh sửa thành công.','success');
                redirect('admin/home');
            }
        }
        $this->render('admin/home/index_view'); 
    }
}