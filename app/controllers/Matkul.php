<?php 

class Matkul extends Controller {
    public function index()
    {
        $data['judul'] = 'Daftar Mata Kuliah';
        $data['matkul'] = $this->model('Matkul_model')->getAllMatkul();
        $this->view('templates/header', $data);
        $this->view('matkul/index', $data);
        $this->view('templates/footer');
    }

    public function cari()
    {
        $data['judul'] = 'Daftar Mata Kuliah';
        $data['matkul'] = $this->model('Matkul_model')->cariDataMatkul();
        $this->view('templates/header', $data);
        $this->view('matkul/index', $data);
        $this->view('templates/footer');
    }

}