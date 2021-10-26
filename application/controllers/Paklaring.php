<?php

class Paklaring extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->model('Paklaring_model');
		$this->load->library('form_validation');
	}

	public function index(){
		$data['judul'] = 'Penilaian Kinerja Mahasiswa';

		$this->load->view('templates/header', $data);
		$this->load->view('paklaring/upload_paklaring');
		$this->load->view('templates/footer');
	}

	public function tambah_paklaring(){
		$paklaring = $_FILES['kirim_paklaring'];

		if ($paklaring = '') {
			} else {
				$config['upload_path']		= './assets/paklaring';
				$config['allowed_types']	= 'jpg|jpeg|png|pdf|doc|docx';
				$config['max_size']			= 2048;
				$this->load->library('upload', $config);
				if (!$this->upload->do_upload('kirim_paklaring')) {
						echo "Upload Gagal"; die();
				} else {
					$nama_paklaring = $this->upload->data('file_name');
				}
			}
		$data = array(
			'nama_file'	=> $nama_paklaring
		);

		$this->Paklaring_model->tambahDataPakalring($data);
		redirect('penilaian');
	}

}