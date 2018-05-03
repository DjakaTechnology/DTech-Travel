<?php
if(!defined('BASEPATH')) exit ('No direct script access allowed');

class User_db extends CI_Model{

	public function __construct(){
		$this->load->database();
    }
    
    public function RegisterSubmit($data){
        $this->db->insert('f_user', $data);
    }

    public function GetAllUser(){
        $this->db->select('*');
        $this->db->from('f_user');

        return $this->db->get();
    }
    public function DeleteUser($id){
        $this->db->delete('f_user', array('id' =>$id));
    }
}