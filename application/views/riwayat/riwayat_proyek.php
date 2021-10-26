
        <!-- content -->
         <div class="container">
            <div class="row">
              <div class="col-sm-10"><h1 class="h3 mb-0 text-gray-800">Riwayat Proyek</h1></div>
            </div>
            <hr>
          </div>

<div class="container">
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
                  <p>Dibuat pada <?= $p['tanggal_proyek']; ?></p>
                </div>
              </div>
              </div>
            </div>
<?php endforeach; ?>
</div>
