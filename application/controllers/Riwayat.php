<?php

class Riwayat extends CI_Controller{

	public function __construct(){
		parent::__construct();
		$this->load->model('Proyek_model');
	}

	public function index(){
		$data['judul'] = 'Riwayat Proyek';
		$data['proyek'] = $this->Proyek_model->getAllProyek();

		$this->load->view('templates/header', $data);
		$this->load->view('riwayat/riwayat_proyek', $data);
		$this->load->view('templates/footer');
	}

}