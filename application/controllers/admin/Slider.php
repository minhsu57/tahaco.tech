<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Slider extends Admin_Controller
{

    function __construct()
    {
        parent::__construct();
        if(!$this->ion_auth->in_group('admin'))
        {
            $this->postal->add('You are not allowed to visit the Slider page','error');
            redirect('admin');
        }
        $this->load->model('slider_model');
        date_default_timezone_set("Asia/Ho_Chi_Minh");       
        $input['order'] = array('id','DESC');
    }

    public function index()
    {
        $this->data['items'] = $this->slider_model->get_list();
        $this->render('admin/slider/index_view');
    }

    public function create()
    {
        if($this->input->post('submit')){
            $link = $this->input->post('link');
            $description = $this->input->post('description');
            $description2 = $this->input->post('description2');
            $status = $this->input->post('status');
            $image = $this->input->post('image');
            // get value of src img tag
            preg_match( '@src="([^"]+)"@' , $image, $match);
            $image_name = array_pop($match);
            $insert_data = array('link' => $link, 'description' => $description, 'description2' => $description2, 'status'=>'status', 'image'=> $image, 'image_name'=> $image_name, 'status' => $status, 'modified_date'=>date('Y-m-d H:i:s'));
            if(!$this->slider_model->create($insert_data))
            {             
                $this->postal->add('Created fail !','error');
            }else $this->postal->add('Created successfully .','success');
            redirect('admin/slider');            
        }else{
            $this->render('admin/slider/create_view');
        }
    }

    public function edit($id)
    {
        $input['where'] = array('id' => $id);
        $this->data['item'] = $this->slider_model->get_row($input);
        if($this->input->post('submit')){
            $link = $this->input->post('link');
            $description = $this->input->post('description');
            $description2 = $this->input->post('description2');
            $status = $this->input->post('status');
            $image = $this->input->post('image');
                // get value of src img tag
            preg_match( '@src="([^"]+)"@' , $image, $match);
            $image_name = array_pop($match);
            $update_data = array('link' => $link,'description' => $description, 'description2' => $description2, 'status'=>'status', 'image'=> $image, 'image_name'=> $image_name, 'status' => $status, 'modified_date'=>date('Y-m-d H:i:s'));
            if(!$this->slider_model->update($id , $update_data))
            {             
                $this->postal->add('Edited fail !','error');
            }else $this->postal->add('Edited successfully.','success');
            redirect('admin/slider');            
        }else{
            $this->render('admin/slider/edit_view');
        }
    }

    public function delete($slider_id){
        if(!$this->slider_model->delete($slider_id))
        {
            $this->postal->add('Slider was not existed !','error');
            redirect('admin/slider');
        }else{
            $this->postal->add('Deleted successfully','success');            
        }
        redirect('admin/slider');
    }
}