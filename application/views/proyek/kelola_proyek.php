        <!-- content -->
          <div class="container">
            <div class="row">
              <div class="col-sm-10"><h1 class="h3 mb-0 text-gray-800">Daftar Proyek</h1></div>
              <div class="col-sm-2">
                <a href="<?= base_url(); ?>proyek/tambah" class="btn btn-primary">Tambah Proyek</a>
              </div>
            </div>
            <hr>
          </div>



<div class="container">
  <?php if( $this->session->flashdata('flash') ) : ?>
  <div class="row mt-2">
    <div class="col-md-6">
      <div class="alert alert-success alert-dismissible fade show" role="alert">
        <?= $this->session->flashdata('flash'); ?>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
        </button>
      </div>
    </div>
  </div>
<?php endif ?>
<?php foreach ( $proyek as $p ) : ?>
          <div class="row">
             <!-- Basic Card Example -->
              <div class="col-md-12">
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary"><?= $p['nama_proyek']; ?></h6>
                </div>
                <div class="card-body">
                  <p><?= $p['deskripsi_proyek']; ?></p>
                  <p>Berlokasi di <?= $p['lokasi_proyek']; ?></p>
                  <p>Mahasiswa</p>
                  <div class="row">
                  	<img src="assets/img/profile.png" alt="..." class="img-thumbnail" style="width: 50px; height: 50px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px;">
                  	<img src="assets/img/profile.png" alt="..." class="img-thumbnail" style="width: 50px; height: 50px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px;">
                  	<img src="assets/img/profile.png" alt="..." class="img-thumbnail" style="width: 50px; height: 50px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px;">
                  	<img src="assets/img/tambah.png" alt="..." class="img-thumbnail" style="width: 50px; height: 50px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px;">
                  </div>
	                  <a href="<?= base_url(); ?>penilaian" class="btn btn-primary">Selesai</a>
	                  <a href="<?= base_url(); ?>proyek/ubah/<?= $p['id_proyek']; ?>" class="btn btn-primary">Ubah</a>
	                  <a href="<?= base_url(); ?>proyek/hapus/<?= $p['id_proyek']; ?>" class="btn btn-primary" onclick="return confirm('Hapus Proyek?');">Hapus</a>
                </div>
              </div>
              </div>
            </div>
<?php endforeach; ?>
</div>
