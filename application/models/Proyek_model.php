<?php

class Proyek_model extends CI_model{

	public function getAllProyek(){
		return $query = $this->db->get('t_proyek')->result_array();
	}

	public function tambahDataProyek(){
		$data = [
			"nama_proyek" => $this->input->post('nama_proyek', true),
			"deskripsi_proyek" => $this->input->post('deskripsi_proyek', true),
			"lokasi_proyek" => $this->input->post('lokasi_proyek', true)
		];

		$this->db->insert('t_proyek', $data);
	}

	public function hapusDataProyek($id_proyek){
		$this->db->where('id_proyek', $id_proyek);
		$this->db->delete('t_proyek');
	}

	public function getProyekById($id_proyek){
		return $this->db->get_where('t_proyek', ['id_proyek' => $id_proyek])->row_array();
	}

	public function ubahDataProyek(){
		$data = [
			"nama_proyek" => $this->input->post('nama_proyek', true),
			"deskripsi_proyek" => $this->input->post('deskripsi_proyek', true),
			"lokasi_proyek" => $this->input->post('lokasi_proyek', true)
		];

		$this->db->where('id_proyek', $this->input->post('id_proyek'));
		$this->db->update('t_proyek', $data);
	}

}