<!-- content -->
          <div class="container">
            <div class="row">
              <div class="col-sm-10"><h1 class="h3 mb-0 text-gray-800">Ubah Data Proyek</h1></div>
              </div>
            <hr>
          </div>

        <!-- content -->
        <!-- Page Heading -->
          <form action="" method="post">
            <input type="hidden" name="id_proyek" value="<?= $proyek['id_proyek']; ?>">
            <div class="form-group row">
              <label for="nama_proyek" class="col-sm-2 col-form-label">Nama Proyek</label>
              <div class="col-sm-8">
                <input type="text" name="nama_proyek" class="form-control" id="nama_proyek" value="<?= $proyek['nama_proyek']; ?>">
                <small class="form-text text-danger"><?= form_error('nama_proyek') ?></small>
              </div>
            </div>
            <div class="form-group row">
              <label for="deskripsi_proyek" class="col-sm-2 col-form-label">Deskripsi Proyek</label>
              <div class="col-sm-8">
                <textarea type="text" name="deskripsi_proyek" class="form-control" id="deskripsi_proyek" rows="3"><?= $proyek['deskripsi_proyek']; ?></textarea>
                <small class="form-text text-danger"><?= form_error('deskripsi_proyek') ?></small>
              </div>
            </div>
            <div class="form-group row">
              <label for="lokasi_proyek" class="col-sm-2 col-form-label">Lokasi Proyek</label>
              <div class="col-sm-8">
                <input type="text" name="lokasi_proyek" class="form-control" id="lokasi_proyek" value="<?= $proyek['lokasi_proyek']; ?>">
                <small class="form-text text-danger"><?= form_error('lokasi_proyek') ?></small>
              </div>
            </div>
            <div class="form-group row">
              <label for="lokasi_proyek" class="col-sm-2 col-form-label">Mahasiswa</label>
              <div class="col-sm-8">
                <div class="row">
                    <img src="assets/img/profile.png" alt="..." class="img-thumbnail" style="width: 50px; height: 50px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px;">
                    <img src="assets/img/profile.png" alt="..." class="img-thumbnail" style="width: 50px; height: 50px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px;">
                    <img src="assets/img/profile.png" alt="..." class="img-thumbnail" style="width: 50px; height: 50px; margin-left: 10px; margin-right: 10px; margin-bottom: 10px;">
                  </div>
              </div>
            </div>
            <div class="form-group row">
              <div class="col-sm-10">
                <button type="submit" name="tambah" class="btn btn-primary float-right">Ubah</button>
              </div>
            </div>
          </form>
