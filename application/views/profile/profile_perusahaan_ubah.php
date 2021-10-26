        <!-- content -->
        <form action="" method="post">
          <input type="hidden" name="id_perusahaan" value="<?= $perusahaan['id_perusahaan']; ?>">
          <div class="form-group">
            <label for="inputAddress">Nama Perusahaan</label>
            <input type="text" class="form-control" id="nama_perusahaan" name="nama_perusahaan" value="<?= $perusahaan['nama_perusahaan']; ?>">
            <small class="form-text text-danger"><?= form_error('nama_perusahaan') ?></small>
          </div>
          <div class="form-group">
            <label for="inputAddress2">Nomor SIUP</label>
            <input type="text" class="form-control" id="no_siup" name="no_siup" value="<?= $perusahaan['no_siup']; ?>">
            <small class="form-text text-danger"><?= form_error('no_siup') ?></small>
          </div>
          <div class="form-group">
            <label for="inputAddress2">Alamat Perusahaan</label>
            <textarea type="text" class="form-control" id="alamat" placeholder="Kosong" rows="3"></textarea>
          </div>
          <div class="form-row">
            <div class="form-group col-md-3">
              <label for="inputCity">Nomor Telepon</label>
              <input type="text" class="form-control" id="no_telepon" name="no_telepon" value="<?= $perusahaan['no_telepon']; ?>">
              <small class="form-text text-danger"><?= form_error('no_telepon') ?></small>
            </div>
            <div class="form-group col-md-3">
              <label for="inputState">Alamat Email Perusahaan</label>
              <input type="text" class="form-control" id="email" name="email" value="<?= $perusahaan['email']; ?>">
              <small class="form-text text-danger"><?= form_error('email') ?></small>
            </div>
            <div class="form-group col-md-3">
              <label for="inputZip">Alamat Website</label>
              <input type="text" class="form-control" id="alamat_website" name="alamat_website" value="<?= $perusahaan['alamat_website']; ?>">
              <small class="form-text text-danger"><?= form_error('alamat_website') ?></small>
            </div>
            <div class="form-group col-md-3">
              <label for="inputZip">Pemilik</label>
              <input type="text" class="form-control" id="nama_pemilik" name="nama_pemilik" value="<?= $perusahaan['nama_pemilik']; ?>">
              <small class="form-text text-danger"><?= form_error('nama_pemilik') ?></small>
            </div>
          </div>
          <button type="submit" name="tambah" class="btn btn-primary">Simpan</button>
        </form>
