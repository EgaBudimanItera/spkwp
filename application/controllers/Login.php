<?php 
 
class Login extends CI_Controller{
 
	function __construct(){
		parent::__construct();		
		$this->load->model('m_login');
 
	}
 
	function index(){
		$this->load->view('login');
	}
	
	function loginkepsek(){
		$this->load->view('loginkepsek');
	}

	function aksi_login(){
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$hakakses = $this->input->post('hakakses');
		$where = array(
			'username' => $username,
			'password' => $password,
			'hakakses' => $hakakses
			);
		$cek = $this->m_login->cek_login("login",$where)->num_rows();
		if($cek > 0){
 
			$data_session = array(
				'nama' => $hakakses,
				'status' => "login"
				);
 			
			redirect(base_url("dashboard"));
 
		}else{
			echo "Maaf Password atau Username Salah";
			redirect(base_url('login'));
		}
	}
	
	function aksi_login_kepsek(){
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$hakakses = $this->input->post('hakakses');
		$where = array(
			'username' => $username,
			'password' => $password,
			'hakakses' => $hakakses
			);
		$cek = $this->m_login->cek_login("login",$where)->num_rows();
		if($cek > 0){
 
			$data_session = array(
				'nama' => $hakakses,
				'status' => "login"
				);
 			
			redirect(base_url("dashboard/dashboard_kepsek"));
 
		}else{
			echo "Maaf Password atau Username Salah";
			redirect(base_url('login'));
		}
	}
 

	function logout(){
		$this->session->sess_destroy();
		redirect(base_url('login'));
	}
}
