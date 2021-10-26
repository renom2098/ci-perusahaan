<?php

class Profile extends CI_Controller{

	public function __construct(){
		parent::__construct();
		$this->load->model('Profile_model');
		$this->load->library('form_validation');
	}

	public function index(){
		$data['judul'] = 'Profile Perusahaan';
		$data['perusahaan'] = $this->Profile_model->getAllPerusahaan();

		$this->load->view('templates/header', $data);
		$this->load->view('profile/profile_perusahaan', $data);
		$this->load->view('templates/footer');
	}

	public function ubah($id_perusahaan){
		$data['judul'] = 'Profile Perusahaan';
		$data['perusahaan'] = $this->Profile_model->getProfileById($id_perusahaan);

		$this->form_validation->set_rules('nama_perusahaan', 'Nama perusahaan', 'required');
		$this->form_validation->set_rules('no_siup', 'Nomor SIUP', 'required');
		$this->form_validation->set_rules('no_telepon', 'Nomor Telepon', 'required');
		$this->form_validation->set_rules('email', 'Email', 'required');
		$this->form_validation->set_rules('alamat_website', 'Alamat Website', 'required');
		$this->form_validation->set_rules('nama_pemilik', 'Nama Pemilik', 'required');

		if( $this->form_validation->run() == FALSE ){
			$this->load->view('templates/header', $data);
			$this->load->view('profile/profile_perusahaan_ubah', $data);
			$this->load->view('templates/footer');			
		} else {
			$this->Profile_model->ubahDataProfile();
			redirect('profile');
		}			
	}

}