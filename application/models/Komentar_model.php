<?php

class Komentar_model extends CI_model{

	public function tambahDataKomentar(){
		$data = [
			"komentar" => $this->input->post('komentar', true)
		];

		$this->db->insert('t_komentar', $data);
	}

}