<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Home_info extends Admin_Controller
{

    function __construct()
    {
        parent::__construct();
        if(!$this->ion_auth->in_group('admin'))
        {
            $this->postal->add('You are not allowed to visit the Categories page','error');
            redirect('admin');
        }
        $this->load->model('home_model');
        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
        date_default_timezone_set("Asia/Ho_Chi_Minh");
    }

    public function area1()
    {
        $input['where']= array('id' => 1);
        $this->data['item'] = $this->home_model->get_row($input);

        if($this->input->post('submit')){
            $id = $this->input->post('id');
            $slogan1 = $this->input->post('slogan1');
            $chu_dau_tu = $this->input->post('chu_dau_tu');
            $vi_tri_du_an = $this->input->post('vi_tri_du_an');
            $tien_ich_du_an = $this->input->post('tien_ich_du_an');
            $phuong_thuc_thanh_toan = $this->input->post('phuong_thuc_thanh_toan');
            $sub_slogan1 = $this->input->post('sub_slogan1');
            $item1_slogan1 = $this->input->post('item1_slogan1');
            $item2_slogan1 = $this->input->post('item2_slogan1');
            $item3_slogan1 = $this->input->post('item3_slogan1');
            $image_slogan1 = $this->input->post('image_slogan1');
            $update_data = array('slogan1' => $slogan1, 'chu_dau_tu' => $chu_dau_tu, 'vi_tri_du_an' => $vi_tri_du_an, 'tien_ich_du_an' => $tien_ich_du_an, 'phuong_thuc_thanh_toan' => $phuong_thuc_thanh_toan, 'sub_slogan1' => $sub_slogan1, 'item1_slogan1' => $item1_slogan1, 'item2_slogan1' => $item2_slogan1, 'item3_slogan1' => $item3_slogan1, 'image_slogan1' => $image_slogan1);
            if(!$this->home_model->update($id, $update_data))
            {             
                $this->postal->add('Chỉnh sửa thất bại !','error');
            }else $this->postal->add('Chỉnh sửa thành công.','success');
            redirect('admin/home_info/area1');
        }
        $this->render('admin/home_info/index1_view'); 
    }
    public function area2()
    {
        $input['where']= array('id' => 1);
        $this->data['item'] = $this->home_model->get_row($input);

        if($this->input->post('submit')){
            $id = $this->input->post('id');
            $slogan2 = $this->input->post('slogan2');
            $sub_slogan2 = $this->input->post('sub_slogan2');
            $image_slogan2 = $this->input->post('image_slogan2');
            $phia_dong = $this->input->post('phia_dong');
            $phia_tay = $this->input->post('phia_tay');
            $phia_nam = $this->input->post('phia_nam');
            $phia_bac = $this->input->post('phia_bac');
            $update_data = array('slogan2' => $slogan2, 'sub_slogan2' => $sub_slogan2, 'image_slogan2' => $image_slogan2, 'phia_dong' => $phia_dong, 'phia_tay' => $phia_tay, 'phia_nam' => $phia_nam, 'phia_bac' => $phia_bac);
            if(!$this->home_model->update($id, $update_data))
            {             
                $this->postal->add('Chỉnh sửa thất bại !','error');
            }else $this->postal->add('Chỉnh sửa thành công.','success');
            redirect('admin/home_info/area2');
        }
        $this->render('admin/home_info/index2_view'); 
    }
    public function area3()
    {
        $input['where']= array('id' => 1);
        $this->data['item'] = $this->home_model->get_row($input);

        if($this->input->post('submit')){
            $id = $this->input->post('id');
            $slogan3 = $this->input->post('slogan3');
            $item1_slogan3 = $this->input->post('item1_slogan3');
            $item2_slogan3 = $this->input->post('item2_slogan3');
            $item3_slogan3 = $this->input->post('item3_slogan3');
            $image_slogan3 = $this->input->post('image_slogan3');
            $update_data = array('slogan3' => $slogan3, 'item1_slogan3' => $item1_slogan3, 'item2_slogan3' => $item2_slogan3, 'item3_slogan3' => $item3_slogan3, 'image_slogan3' => $image_slogan3);
            if(!$this->home_model->update($id, $update_data))
            {             
                $this->postal->add('Chỉnh sửa thất bại !','error');
            }else $this->postal->add('Chỉnh sửa thành công.','success');
            redirect('admin/home_info/area3');
        }
        $this->render('admin/home_info/index3_view'); 
    }
     public function area4()
    {
        $input['where']= array('id' => 1);
        $this->data['item'] = $this->home_model->get_row($input);

        if($this->input->post('submit')){
            $id = $this->input->post('id');
            $slogan4 = $this->input->post('slogan4');
            $image_slogan4 = $this->input->post('image_slogan4');
            $update_data = array('slogan4' => $slogan4, 'image_slogan4' => $image_slogan4);
            if(!$this->home_model->update($id, $update_data))
            {             
                $this->postal->add('Chỉnh sửa thất bại !','error');
            }else $this->postal->add('Chỉnh sửa thành công.','success');
            redirect('admin/home_info/area4');
        }
        $this->render('admin/home_info/index4_view'); 
    }
}