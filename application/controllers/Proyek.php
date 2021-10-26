<?php

class Proyek extends CI_Controller{

	public function __construct(){
		parent::__construct();
		$this->load->model('Proyek_model');
		$this->load->library('form_validation');

	}
	
	public function index(){
		$data['judul'] = 'Kelola Proyek';
		$data['proyek'] = $this->Proyek_model->getAllProyek();

		$this->load->view('templates/header', $data);
		$this->load->view('proyek/kelola_proyek', $data);
		$this->load->view('templates/footer');
	}

	public function tambah(){
		$data['judul'] = 'Tambah Proyek';

		$this->form_validation->set_rules('nama_proyek', 'Nama Proyek', 'required');
		$this->form_validation->set_rules('deskripsi_proyek', 'Deskripsi Proyek', 'required');
		$this->form_validation->set_rules('lokasi_proyek', 'Lokasi Proyek', 'required');

		if( $this->form_validation->run() == FALSE ){
			$this->load->view('templates/header', $data);
			$this->load->view('proyek/kelola_proyek_tambah');
			$this->load->view('templates/footer');
		} else {
			$this->Proyek_model->tambahDataProyek();
			$this->session->set_flashdata('flash', 'Data Proyek Berhasil Ditambahkan.');
			redirect('proyek');
		}
	}

	public function hapus($id_proyek){
		$this->Proyek_model->hapusDataProyek($id_proyek);
		$this->session->set_flashdata('flash', 'Data Berhasil Dihapus');
		redirect('proyek');
	}

	public function ubah($id_proyek){
		$data['judul'] = 'Ubah Proyek';
		$data['proyek'] = $this->Proyek_model->getProyekById($id_proyek);

		$this->form_validation->set_rules('nama_proyek', 'Nama Proyek', 'required');
		$this->form_validation->set_rules('deskripsi_proyek', 'Deskripsi Proyek', 'required');
		$this->form_validation->set_rules('lokasi_proyek', 'Lokasi Proyek', 'required');

		if( $this->form_validation->run() == FALSE ){
			$this->load->view('templates/header', $data);
			$this->load->view('proyek/kelola_proyek_ubah', $data);
			$this->load->view('templates/footer');
		} else {
			$this->Proyek_model->ubahDataProyek();
			$this->session->set_flashdata('flash', 'Data Proyek Berhasil Diubah.');
			redirect('proyek');
		}
	}

}