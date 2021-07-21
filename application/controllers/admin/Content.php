<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Content extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('backend/Mproduct');
		$this->load->model('backend/Mcategory');
		$this->load->model('backend/Mcustomer');
		$this->load->model('backend/Muser');
		$this->load->model('backend/Morders');
		$this->load->model('backend/Morderdetail');
		if(!$this->session->userdata('sessionadmin'))
		{
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionadmin');
		$this->data['com']='content';
	}

	public function index()
	{
		
		
		$this->data['view']='index';
		$this->data['title']='Tin tức';
		$this->load->view('backend/layout', $this->data);
	}
	public function insert()
	{
		
		
		$this->data['view']='insert';
		$this->data['title']='Insert';
		$this->load->view('backend/layout', $this->data);
	}

	public function update()
	{
		
		
		$this->data['view']='update';
		$this->data['title']='Update';
		$this->load->view('backend/layout', $this->data);
	}

}

