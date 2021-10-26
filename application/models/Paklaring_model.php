<?php

class Paklaring_model extends CI_model{

	public function tambahDataPakalring($data){
		$this->db->insert('t_paklaring', $data);
	}

}