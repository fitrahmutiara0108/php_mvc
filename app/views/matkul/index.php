<div class="container mt-3">

    <div class="row">
      <div class="col-lg-6">
        <?php Flasher::flash(); ?>
      </div>
    </div>

    <div class="row mb-3">
      <div class="col-lg-6">
        <form action="<?= BASEURL; ?>/matkul/cari" method="post">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="cari mata kuliah.." name="keyword" id="keyword" autocomplete="off">
            <div class="input-group-append">
              <button class="btn btn-primary" type="submit" id="tombolCari">Cari</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  
    <div class="row">
        <div class="col-lg-6">
          <h3>Daftar Mata Kuliah</h3>
          <ul class="list-group">
            <?php foreach( $data['matkul'] as $matkul ) : ?>
              <li class="list-group-item">
		  <p>id: 
                  <?= $matkul['id_matkul']; ?> </p>
		  <?= $matkul['nama_matkul']; ?> 
              </li>
            <?php endforeach; ?>
          </ul>      
        </div>
    </div>

</div>






