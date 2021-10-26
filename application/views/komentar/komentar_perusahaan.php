<div class="container">
	<div class="row">
		<div class="col-md-10">
			<form method="post">
				<div class="form-group">
				    <label for="exampleFormControlTextarea1">Komentar</label>
				    <small class="form-text text-danger"><?= form_error('komentar') ?></small>
				    <textarea class="form-control" id="exampleFormControlTextarea1" name="komentar" rows="10"></textarea>
				    <button type="submit" class="btn btn-primary float-right mt-3">Komentar</button>
			 	</div>
			</form>
		</div>		
	</div>
</div>