<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Lienhe extends Admin_Controller
{

    function __construct()
    {
        parent::__construct();
        if(!$this->ion_auth->in_group('admin'))
        {
            $this->postal->add('You are not allowed to visit the Categories page','error');
            redirect('admin');
        }
        $this->load->model('posts_model');

    }

    public function index()
    {
        $input['where'] = array('type' =>'lienhe');
        $this->data['item'] = $this->posts_model->get_row($input);
        $this->data['page'] = 'lienhe';
        $this->data['page_name'] = 'Liên hệ';
        //$this->data['next_previous_pages'] = $this->menu_item_model->all_pages;
        
        $this->form_validation->set_rules('title', 'Nhập tiêu đề', 'trim|required');
        $this->form_validation->set_rules('content', 'Nhập nội dung', 'trim|required');
        if ($this->form_validation->run() == FALSE) {
            
        }
        else {
            if($this->input->post('submit')){
                $id = $this->input->post('id');
                $title = $this->input->post('title');
                $content = $this->input->post('content');
                $update_data = array('title' => $title, 'content' => $content, 'created_date'=>date('Y-m-d'));
                if(!$this->posts_model->update($id, $update_data))
                {             
                    $this->postal->add('Chỉnh sửa thất bại !','error');
                }else $this->postal->add('Chỉnh sửa thành công.','success');
                redirect('admin/lienhe');
            }
        }
        $this->render('admin/posts/index_view'); 
    }
}