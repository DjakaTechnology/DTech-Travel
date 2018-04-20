<?php
defined('BASEPATH') OR exit ('No direct script access allowed');

class User extends CI_Controller{
	public function __construct(){
		parent::__construct();
	}

	public function index(){
		//$data['images'] = $this->Home_model->get_images();

		//$this->load->view('home_view',  $data);
		$this->load->helper('url');
		$this->load->view('index');
	}
	
	public function Login(){
		$this->load->view('welcome_message');
	}
}

?>