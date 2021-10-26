<?php

class Penilaian_model extends CI_model{

	public function getAllMahasiswa(){
		return $this->db->get('t_mahasiswa')->result_array();
	}

	public function getNilaiById($id_mhs){
		return $this->db->get_where('t_mahasiswa', ['id_mhs' => $id_mhs])->row_array();
	}

	public function getJmlProyekById($id_mhs){
		return $this->db->get_where('t_mahasiswa', ['id_mhs' => $id_mhs])->row_array();
	}

	public function ubahDataNilai(){

		$id_mhs = $this->input->post('id_mhs');
		
		$total = $this->input->post('total');
		
		$penilaian = $this->getNilaiById($id_mhs);
		
		$nilai = $penilaian['penilaian'];
		
		if ($total >= 35) {
          $nilai += 1;
        }

        //proyek
        $getJmlProyek = $this->getJmlProyekById($id_mhs);
		$setProyek = $getJmlProyek['jml_proyek']+1;


		$data = [
			"penilaian" => $nilai,
			"jml_proyek" => $setProyek
		];

		$this->db->where('id_mhs', $id_mhs);
		$this->db->update('t_mahasiswa', $data);
	}

}