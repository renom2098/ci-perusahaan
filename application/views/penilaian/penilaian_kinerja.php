        <!-- content -->
        <div class="container">

          <div class="row">

             <!-- Basic Card Example -->
              <div class="col-md-12">
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Proyek Pembuatan Website</h6>
                </div>
                <div class="card-body">
                  <p>Daftar Mahasiswa</p>
                  <?php foreach($penilaian as $pn) : ?>
                  <hr>
                  <div class="row">
                    <div class="col-md-4">
                      <img src="assets/img/profile.png" class="card-img" alt="...">
                    </div>
                    <div class="col-md-4">
                      <img src="assets/img/star<?= $pn['penilaian']; ?>.png" class="card-img" alt="...">
                      <hr>
                      <p>Nama : <?= $pn['nama_mhs']; ?></p>
                      <p>Perguruan Tinggi : <?= $pn['perguruan_tinggi']; ?></p>
                      <p>Fakultas : <?= $pn['fakultas']; ?></p>
                    </div>
                    <div class="col-md-4">
                      <h4><?= $pn['jml_proyek']; ?> (Proyek)</h4>
                      <a href="<?= base_url(); ?>penilaian/nilai/<?= $pn['id_mhs']; ?>" class="btn btn-primary">Nilai</a>
                      <hr>
                      <a href="<?= base_url(); ?>komentar" class="btn btn-primary">Komentar</a>
                      <hr>
                     <a href="<?= base_url(); ?>paklaring" class="btn btn-primary" >Kirim Paklaring</a>
                    </div>                    
                  </div>
                  <?php endforeach; ?>
                  </div>
                </div>
              </div>
              </div> 
            </div>
