<?php

class Profile_model extends CI_model{

	public function getAllPerusahaan(){
		return $this->db->get('t_perusahaan')->result_array();
	}

	public function getProfileById($id_perusahaan){
		return $this->db->get_where('t_perusahaan', ['id_perusahaan' => $id_perusahaan])->row_array();
	}

	public function ubahDataProfile(){
		$data = [
			"nama_perusahaan" => $this->input->post('nama_perusahaan', true),
			"no_siup" => $this->input->post('no_siup', true),
			"no_telepon" => $this->input->post('no_telepon', true),
			"email" => $this->input->post('email', true),
			"alamat_website" => $this->input->post('alamat_website', true),
			"nama_pemilik" => $this->input->post('nama_pemilik', true)
		];
		
		$this->db->where('id_perusahaan', $this->input->post('id_perusahaan'));
		$this->db->update('t_perusahaan', $data);
	}

}