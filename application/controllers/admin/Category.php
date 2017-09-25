<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Category extends Admin_Controller
{

    function __construct()
    {
        parent::__construct();
        if(!$this->ion_auth->in_group('admin'))
        {
            $this->postal->add('You are not allowed to visit the Categories page','error');
            redirect('admin');
        }
        $this->load->helper(array('form', 'url'));
        $this->load->model('category_model');
        date_default_timezone_set("Asia/Ho_Chi_Minh");
        $this->load->library('form_validation');
        $this->lang->load('form_validation', 'english');
        $this->form_validation->set_error_delimiters('<span class="form_error">','</span>');
    }

    public function index()
    {
        $input['order'] = array('level', 'desc');
        $this->data['items'] = $this->category_model->get_list($input);
        $this->render('admin/category/index_view');
    }

    public function create()
    {
        if($this->input->post('submit')){
            //$this->form_validation->set_message('required', $this->lang->line('required'));            
            $this->form_validation->set_rules('name', 'Title', 'trim|required');
            $this->form_validation->set_rules('content', 'Photo', 'trim|required');
            $this->form_validation->set_rules('description', 'Content', 'trim|required');
            if($this->form_validation->run() == FALSE)
            {
                $this->render('admin/category/create_view');
            }else{

                // check id is exist or not
                $name = ltrim($this->input->post('name'));
                $name = rtrim($name);
                $input['where'] = array('id' => create_slug($name));
                $total_category_id = $this->category_model->get_total($input);
                if($total_category_id >0){
                    $this->postal->add('Category was existed !','error');
                    $this->render('admin/category/create_view');
                }else{
                    $level = $this->input->post('level');
                    $description = $this->input->post('description');
                    $content = $this->input->post('content');
                    $meta_keyword = $this->input->post('meta_keyword');
                    $meta_description = $this->input->post('meta_description');
                    $update_data = array('id' => create_slug($name), 'name' => $name, 'description' => $description, 'content' => $content, 'level' => $level, 'meta_keyword' => $meta_keyword, 'meta_description' => $meta_description, 'modified_date'=>date('Y-m-d H:i:s'));
                    if(!$this->category_model->create($update_data))
                    {             
                        $this->postal->add('Save fail !','error');
                    }else { $this->postal->add('Save successfully.','success'); }
                    redirect('admin/category');
                }
            }
        }else{            
            $this->render('admin/category/create_view');
        }
    }

    public function edit($id)
    {
        $input['where'] = array('id' => $id);
        $this->data['item'] = $this->category_model->get_row($input);
        if($this->input->post('submit')){
            $this->form_validation->set_rules('description', 'Content', 'trim|required');
            $this->form_validation->set_rules('content', 'Photo', 'trim|required');
            if($this->form_validation->run() == FALSE)
            {
                $this->render('admin/category/edit_view');
            }else{
                $this->data['level'] = $this->input->post('level');
                $this->data['description'] = $this->input->post('description');
                $this->data['content'] = $this->input->post('content');
                $this->data['meta_keyword'] = $this->input->post('meta_keyword');
                $this->data['meta_description'] = $this->input->post('meta_description');
                $update_data = array('description' => $this->data['description'], 'content' => $this->data['content'], 'level' => $this->data['level'], 'meta_keyword' => $this->data['meta_keyword'], 'meta_description' => $this->data['meta_description'], 'modified_date'=>date('Y-m-d H:i:s'));
                if(!$this->category_model->update($id, $update_data))
                {             
                    $this->postal->add('Save fail !','error');
                }else $this->postal->add('Save successfully.','success');
                redirect('admin/category');
            }            
        }else{
            $this->render('admin/category/edit_view');
        }
                    
        
    }

    public function delete($id){
        if(!$this->category_model->delete_category_id($id))
        {
            $this->postal->add('Deleted fail !','error');
        }else{
            $this->postal->add('Deleted successfully','success');            
        }
        redirect('admin/category');             
    }
}