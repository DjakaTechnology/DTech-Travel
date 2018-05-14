<?php
defined('BASEPATH') OR exit ('No direct script access allowed');

class User extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->helper('url');
		$this->load->model('User_db');
	}

	public function CheckLogin(){
		redirect('user');
	}

	public function index(){
		$this->Login();
	}
	
	public function Login(){
		$this->load->view('login');
	}

	public function Register(){
		$this->load->view('register');
	}

	public function RegisterAdd(){
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$name = $this->input->post('name');
		$level = $this->input->post('level');

		$data = array(
			'username' => $username,
			'password' => $password,
			'fullname' => $name,
			'level' => $level);

		$this->User_db->RegisterSubmit($data);

		$this->load->view('login');
	}

	public function ShowAllUser(){
		$data = array('result' => $this->User_db->GetAllUser());
		$this->load->view("v_user_list", $data);
	}
	
	public function DeleteUser(){
		$id = $this->input->get('id');

		if(isset($id) && $id != null)
			$this->User_db->DeleteUser($id);		
		
		$this->ShowAllUser();

	}

	public function EditUser(){
		$id = $this->input->get('id');
		
		$data = $this->User_db->GetUserDetail($id)->row();
		$this->load->view('v_edit_user', $data);
	}

	public function DoEditUser(){
		$id = $this->input->get('id');
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$name = $this->input->post('name');
		$level = $this->input->post('level');

		$data = array(
			'username' => $username,
			'password' => $password,
			'fullname' => $name,
			'level' => $level
		);

		$this->User_db->EditUser($id, $data);

		$this->ShowAllUser();
	}
}

?>