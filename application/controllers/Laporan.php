<?php

class Laporan extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('model_laporan');
        $this->load->library('table');
    }

    function index() {
        $this->load->view('laporan');
    }

    
     
    function lihat_laporan() {
        $data['laporan'] = $this->model_laporan->lihat_laporan();
        $this->load->view('view/table_alternatif', $data);
    }
    
   

    function test_sort() {
        $data = array();
        for ($x = 0; $x <= 10; $x++) {
            $data[$x]['nilai'] = rand(1, 100);
            $data[$x]['nama'] = $x;
        }
        //sort($data['nilai']);
        usort($data, function($a, $b) {
            return $a['nilai'] = $b['nilai'];
        });

        echo "<pre>";
        print_r($data);
        echo "</pre>";

        //SORT DESC
        usort($data_subkriteria, function($a, $b) {
            if ($a['id_subkriteria'] == $b['id_subkriteria'])
                return 0;
            return $a['id_subkriteria'] < $b['id_subkriteria'] ? 1 : -1;
        });
    }

    function daftar_evaluasi() {
        //$id = 1;
        $id = $this->input->post('id_kriteria');
        $data_subkriteria = $this->db->select('*')->from('tbl_subkriteria')->where('id_kriteria', $id)->get()->result_array();
        $data_siswa = $this->db->select('*')->from('tbl_alternatif')->get()->result();
        
        //echo "<pre>";
        //print_r($data_siswa);
        //echo "</pre>";
        
        $data_nilai = array();
        $x = 0;
        foreach ($data_siswa as $row) {
            $data_nilai[$x]['nama'] = $row->nama_siswa;
            $data_nilai[$x]['nis'] = $row->nis;
            $y = 0;
            $this->db->select('*')->from('tbl_evaluasi')->join('tbl_subkriteria', 'tbl_evaluasi.id_subkriteria=tbl_subkriteria.id_subkriteria')->where('tbl_evaluasi.nis', $row->nis)->where('tbl_subkriteria.id_kriteria', $id);
            $nilai = $this->db->get()->result();
            foreach($nilai as $baris){
                $data_nilai[$x]['nilai_siswa'][$y]['id_subkriteria']=$baris->id_subkriteria;
                $data_nilai[$x]['nilai_siswa'][$y]['nilai']=$baris->nilai;
                $y++;
            }
            $x++;
        }
        //echo "<pre>";
        //print_r($data_nilai);
        //echo "</pre>";
        echo json_encode(array('data_kriteria'=>$data_subkriteria,'data_nilai'=>$data_nilai));
    }

      
       function laporan(){
        $this->load->view('Laporan');
    }
    function table_laporan(){
        $data['vektor'] = $this->model_alternatif->data_calc();
        $this->load->view('view/table_vektor',$data);
    }
}
