<?php

class Komentar extends CI_Controller{

	public function __construct(){
		parent::__construct();
		$this->load->model('Komentar_model');
		$this->load->library('form_validation');
	}

	public function index(){
		$data['judul'] = 'Penilaian Kinerja Mahasiswa';

		$this->form_validation->set_rules('komentar', 'Komentar', 'required');

		if( $this->form_validation->run() == FALSE ){
			$this->load->view('templates/header', $data);
			$this->load->view('komentar/komentar_perusahaan');
			$this->load->view('templates/footer');
		} else {
			$this->Komentar_model->tambahDataKomentar();
			$this->session->set_flashdata('flash', 'Berhasil memberikan komentar.');
			redirect('penilaian');
		}
	}

}