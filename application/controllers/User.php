<?php
defined('BASEPATH') OR exit ('No direct script access allowed');

class User extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->helper('url');
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
}

?>