<?php 
 
class Admin extends CI_Controller{
 
	function __construct(){
		parent::__construct();
	
		if($this->session->userdata('password') != "login"){
			redirect(base_url("login"));
		}
	}
 
	function index(){
		$this->load->view('Dashboard');
	}
}