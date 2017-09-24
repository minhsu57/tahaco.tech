<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class News extends Admin_Controller
{

    function __construct()
    {
        parent::__construct();
        if(!$this->ion_auth->in_group('admin'))
        {
            $this->postal->add('You are not allowed to visit the Categories page','error');
            redirect('admin');
        }
        $this->load->model('news_model');
        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
        date_default_timezone_set("Asia/Ho_Chi_Minh");
        $this->lang->load('form_validation', 'english');
        $this->load->library('pagination'); 
    }

    public function index()
    {
        //pagination settings
        $config["per_page"] = 15;
        $config['base_url'] = site_url('admin/news');
        $config['total_rows'] = $this->news_model->get_total();
        $this->data['total'] = $config['total_rows'];
        $choice = $config["total_rows"] / $config["per_page"];
        $config["num_links"] = $choice;       
        
        // pagination
        $page = ($this->input->get('page')) ? $this->input->get('page') : 1;
        $this->pagination->initialize($config);        
        $this->data['pagination'] = $this->pagination->create_links();
        $offset = ($page  == 1) ? 0 : ($page * $config['per_page']) - $config['per_page'];
        // record number for each page
        $this->data['record_number'] = ($config["per_page"] * ($page - 1) ) + 1;
        // get list data
        $input_news['limit'] = array($config["per_page"], $offset);

        $input_news['order'] = array('modified_date','DESC');
        $this->data['items'] = $this->news_model->get_list($input_news);
        $this->render('admin/news/index_view');
    }

    public function create()
    {        
        if($this->input->post('submit')){
            $this->form_validation->set_message('required', $this->lang->line('required'));
            $this->form_validation->set_rules('title', 'lang:title', 'required');
            $this->form_validation->set_rules('content', 'lang:content', 'required');
            $this->form_validation->set_rules('short_content', 'lang:short_content', 'required');
            if ($this->form_validation->run() == FALSE)
            {
                 $this->render('admin/news/create_view');
            }else{
                $title = $this->input->post('title');
                $content = $this->input->post('content');
                $image   = $this->input->post('image');
                $short_content = $this->input->post('short_content');
                $keyword = $this->input->post('keyword');
                $meta_description = $this->input->post('meta_description');
                // get value of src img tag
                $image = (string) reset(simplexml_import_dom(DOMDocument::loadHTML($content))->xpath("//img/@src"));

                $insert_data = array('title' => $title,'short_content' => $short_content,'status' => 1, 'content' => $content, 'image' => $image, 'keyword' => $keyword, 'meta_description' => $meta_description, 'modified_date'=>date('Y-m-d H:i:s'));
                if(!$this->news_model->create($insert_data))
                {             
                    $this->postal->add('Thêm bài viết thất bại !','error');
                }else $this->postal->add('Thêm bài viết thành công.','success');
                redirect('admin/news'); 
            }
            
        }else $this->render('admin/news/create_view');
    }

    public function edit($item_id)
    {
        $input['where'] = array('id' => $item_id);
        $this->data['item'] = $this->news_model->get_row($input);        
        if($this->input->post('submit')){
            $this->form_validation->set_message('required', $this->lang->line('required'));
            $this->form_validation->set_rules('title', 'lang:title', 'required');
            $this->form_validation->set_rules('content', 'lang:content', 'required');
            $this->form_validation->set_rules('short_content', 'lang:short_content', 'required');
            if ($this->form_validation->run() == FALSE)
            {
                 $this->render('admin/news/edit_view');
            }else{
                $title   = $this->input->post('title');
                $content = $this->input->post('content');
                $image   = $this->input->post('image');
                $short_content = $this->input->post('short_content');
                $keyword = $this->input->post('keyword');
                $meta_description = $this->input->post('meta_description');
                
                $insert_data = array('title' => $title,'short_content' => $short_content,'status' => 1, 'content' => $content, 'image' => $image, 'keyword' => $keyword, 'meta_description' => $meta_description, 'modified_date'=>date('Y-m-d H:i:s'));
                if(!$this->news_model->update($item_id, $insert_data))
                {             
                    $this->postal->add('Chỉnh sửa bài viết thất bại !','error');
                }else $this->postal->add('Chỉnh sửa bài viết thành công.','success');
                redirect('admin/news');
            }
        }else $this->render('admin/news/edit_view');
    }

    public function delete($item_id){
        $where = array('item_id' => $item_id);
        
        if(!$this->news_model->delete($item_id))
        {
            $this->postal->add('Tin tức không tồn tại','error');
            redirect('admin/news');
        }else{
            $this->postal->add('Xóa tin tức thành công','success');            
        }
        redirect('admin/news');
    }

    public function changeStatus($item_id, $status){
        $update_data = array('status' => $status == 0 ? 1 : 0);
        if(!$this->news_model->update($item_id, $update_data))
        {
            $this->postal->add('Thông tin không tồn tại','error');
        } else{            
            $this->postal->add('Cập nhật Trạng thái thành công - mã Tin tức : '.$item_id,'success');        
        }
        redirect('admin/news');
    }
}