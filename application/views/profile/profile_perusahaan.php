        <!-- content -->
<?php foreach( $perusahaan as $ps ) : ?>
        <div class="container">
          <div class="row">
            <div class="col col-lg-3">
            </div>
            <div class="col-md-6">
              <img src="assets/img/company.png" class="card-img-top" alt="...">
              <table class="table table-striped">
                <tbody>
                  <tr>
                    <th scope="row">Nama Perusahaan</th>
                    <td>:</td>
                    <td><?= $ps['nama_perusahaan']; ?></td>
                  </tr>
                  <tr>
                    <th scope="row">Nomor SIUP</th>
                    <td>:</td>
                    <td><?= $ps['no_siup']; ?></td>
                  </tr>
                  <tr>
                    <th scope="row">Alamat Perusahaan</th>
                    <td>:</td>
                    <td>Kosong</td>
                  </tr>
                  <tr>
                    <th scope="row">Nomor Telepon</th>
                    <td>:</td>
                    <td><?= $ps['no_telepon']; ?></td>
                  </tr>
                  <tr>
                    <th scope="row">Alamat Email Perusahaan</th>
                    <td>:</td>
                    <td><?= $ps['email']; ?></td>
                  </tr>
                  <tr>
                    <th scope="row">Alamat Website</th>
                    <td>:</td>
                    <td><?= $ps['alamat_website']; ?></td>
                  </tr>
                  <tr>
                    <th scope="row">Nama Pemilik Akun</th>
                    <td>:</td>
                    <td><?= $ps['nama_pemilik']; ?></td>
                  </tr>
                </tbody>
              </table>
              <a href="<?= base_url(); ?>profile/ubah/<?= $ps['id_perusahaan']; ?>" name="ubah" class="btn btn-primary" >Ubah</a>
            </div>
            <div class="col col-lg-3">
            </div>
          </div>
        </div>
<?php endforeach; ?>
