<?php 
class Posts extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->helper("url");
	}
	public function index(){
		$id='12';
		$string='Friendly URL - Tạo đường dẫn URL thân thiện trong Codeigniter';
		$this->load->helper("slug");
		$slug= create_slug($string);
		echo base_url() . '/slug/posts/'.$id.'-'.$slug.'.html';
	}
	public function posts(){
		$id=(int)$this->uri->segment(2);
		if($id=="")
			echo "Bài viết không tồn tại hoặc đã bị xóa.";
		else
			echo "Đây là bài viết với id = $id";
	}
}