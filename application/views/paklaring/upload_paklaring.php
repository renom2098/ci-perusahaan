<div class="container">
	<div class="row">
		<div class="col-md-10">
			<?= form_open_multipart('paklaring/tambah_paklaring'); ?>
				<div class="form-group">
				    <label for="kirim_paklaring">Kirim Paklaring</label>
				    <small class="form-text text-danger"><?= form_error('kirim_paklaring') ?></small>
				    <div class="form-group">
					    <input type="file" class="form-control-file" id="kirim_paklaring" name="kirim_paklaring">
					</div>
				    <button type="submit" class="btn btn-primary mt-3">Kirim</button>
			 	</div>
			<?= form_close(); ?>
		</div>		
	</div>
</div>