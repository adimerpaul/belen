<?php
class Rango extends CI_Controller{
function index(){
        if ($_SESSION['tipo']==""){
            header("Location: ".base_url());
        }
        $data['title']='Rango de ventas';
        $data['css']="<link rel='stylesheet' href='".base_url()."assets/css/jquery.dataTables.min.css'>
        <link rel='stylesheet' href='".base_url()."assets/css/buttons.dataTables.min.css'>";
        $this->load->view('templates/header',$data);
        if (isset($_POST['fecha1'])){
            $fecha1=$_POST['fecha1'];
        }else{
            $fecha1=date('Y-m-d');
        }
        $data['fecha1']=$fecha1;
    if (isset($_POST['fecha2'])){
        $fecha2=$_POST['fecha2'];
    }else{
        $fecha2=date('Y-m-d');
    }
    $data['fecha2']=$fecha2;
        $this->load->view('rango',$data);
        $data['tipo']="info";
        $data['msg']="Bienvenidos a rango de ventas";
        $data['js']="
<script src='".base_url()."assets/js/jquery.dataTables.min.js'></script>
<script src='".base_url()."assets/js/dataTables.buttons.min.js'></script>
<script src='".base_url()."assets/js/buttons.flash.min.js'></script>
<script src='".base_url()."assets/js/jszip.min.js'></script>
<script src='".base_url()."assets/js/pdfmake.min.js'></script>
<script src='".base_url()."assets/js/vfs_fonts.js'></script>
<script src='".base_url()."assets/js/buttons.html5.min.js'></script>
<script src='".base_url()."assets/js/buttons.print.min.js'></script>
<script src='".base_url()."assets/js/usuario.js'></script>";
        $this->load->view('templates/footer',$data);
}
function detalle($idfactura){
    $query=$this->db->query("SELECT * FROM detallefactura d
 INNER JOIN producto p ON p.idproducto=d.idproducto
 INNER JOIN factura f ON d.idfactura=f.idfactura
 WHERE  d.idfactura='$idfactura'");
    echo json_encode($query->result_array());
}
}
