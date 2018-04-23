<?php
defined('BASEPATH') OR exit ('No direct script access allowed');

class Home extends CI_Controller{
	public function __construct(){
		parent::__construct();

		$this->load->model('Home_model');
	}

	public function index(){
		$data['images'] = $this->Home_model->get_images();

		$this->load->view('home_view',  $data);
	}
}

?>