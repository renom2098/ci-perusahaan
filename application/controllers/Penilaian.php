<?php

class Penilaian extends CI_Controller{

	public function __construct(){
		parent::__construct();
		$this->load->model('Penilaian_model');
		$this->load->library('form_validation');
	}

	public function index(){
		$data['judul'] = 'Penilaian Kinerja Mahasiswa';
		$data['penilaian'] = $this->Penilaian_model->getAllMahasiswa();

		$this->load->view('templates/header', $data);
		$this->load->view('penilaian/penilaian_kinerja', $data);
		$this->load->view('templates/footer');
	}

	public function nilai($id_mhs){
		$data['judul'] = 'Penilaian Kinerja Mahasiswa';
		$data['penilaian'] = $this->Penilaian_model->getNilaiById($id_mhs);

		$this->input->post('nilai');

		$this->form_validation->set_rules('nilai', 'Penilaian', 'required');

		if( $this->form_validation->run() == FALSE ){
			$this->load->view('templates/header', $data);
			$this->load->view('penilaian/penilaian_kinerja_nilai', $data);
			$this->load->view('templates/footer');			
		} else {
			$this->Penilaian_model->ubahDataNilai();
			redirect('penilaian');
		}
	}

}