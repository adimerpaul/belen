<?php

class Productos extends CI_Controller{
    function index(){
        if ($_SESSION['tipo']==""){
            header("Location: ".base_url());
        }
        $data['title']='Gestionar productos';
        $data['css']="<link rel='stylesheet' href='".base_url()."assets/css/jquery.dataTables.min.css'>
        <link rel='stylesheet' href='".base_url()."assets/css/buttons.dataTables.min.css'>";
        $this->load->view('templates/header',$data);
        $this->load->view('productos');
        $data['tipo']="info";
        $data['msg']="Gestionar productos";
        $data['js']="
<script src='".base_url()."assets/js/jquery.dataTables.min.js'></script>
<script src='".base_url()."assets/js/dataTables.buttons.min.js'></script>
<script src='".base_url()."assets/js/buttons.flash.min.js'></script>
<script src='".base_url()."assets/js/jszip.min.js'></script>
<script src='".base_url()."assets/js/pdfmake.min.js'></script>
<script src='".base_url()."assets/js/vfs_fonts.js'></script>
<script src='".base_url()."assets/js/buttons.html5.min.js'></script>
<script src='".base_url()."assets/js/buttons.print.min.js'></script>
<script src='".base_url()."assets/js/productos.js'></script>";
        $this->load->view('templates/footer',$data);
    }
    function vencer(){
        if ($_SESSION['tipo']==""){
            header("Location: ".base_url());
        }
        $data['title']='Productos a vencer';
        $data['css']="<link rel='stylesheet' href='".base_url()."assets/css/jquery.dataTables.min.css'>
        <link rel='stylesheet' href='".base_url()."assets/css/buttons.dataTables.min.css'>";
        $this->load->view('templates/header',$data);
        $this->load->view('vencer');
        $data['tipo']="warning";
        $data['msg']="Productos a vencer";
        $data['js']="
<script src='".base_url()."assets/js/jquery.dataTables.min.js'></script>
<script src='".base_url()."assets/js/dataTables.buttons.min.js'></script>
<script src='".base_url()."assets/js/buttons.flash.min.js'></script>
<script src='".base_url()."assets/js/jszip.min.js'></script>
<script src='".base_url()."assets/js/pdfmake.min.js'></script>
<script src='".base_url()."assets/js/vfs_fonts.js'></script>
<script src='".base_url()."assets/js/buttons.html5.min.js'></script>
<script src='".base_url()."assets/js/buttons.print.min.js'></script>
<script src='".base_url()."assets/js/productos.js'></script>";
        $this->load->view('templates/footer',$data);
    }
    function insert()
    {
        if ($_SESSION['tipo'] == "") {
            header("Location: " . base_url());
        }
        $nombre = strtoupper($_POST['nombre']);
        $precio = $_POST['precio'];
        $stock = $_POST['stock'];
        $farmacologica = $_POST['farmacologica'];
        $fechavencimiento = $_POST['fechavencimiento'];
        $distribuidora = $_POST['distribuidora'];
        $this->db->query("INSERT INTO producto(nombre,precio,cantidad,farmacologica,fechavencimiento,distribuidora)
VALUES ('$nombre','$precio','$stock','$farmacologica','$fechavencimiento','$distribuidora');");
        $idproducto=$this->db->insert_id();
        $this->db->query("INSERT INTO lote SET cantidad='$stock',idproducto='$idproducto',fechavencimiento='$fechavencimiento'");
        header("Location: ".base_url().'Productos');
    }
    function lote(){
        if ($_SESSION['tipo'] == "") {
            header("Location: " . base_url());
        }
        $idproducto=$_POST['idproducto'];
        $stock = $_POST['stock'];
        $fechavencimiento = $_POST['fechavencimiento'];
        $this->db->query("INSERT INTO lote SET cantidad='$stock',idproducto='$idproducto',fechavencimiento='$fechavencimiento'");
        $this->db->query("UPDATE producto SET 
        
        cantidad=cantidad+'$stock',
        fechavencimiento='$fechavencimiento'
        WHERE
       idproducto='$idproducto';");
        header("Location: ".base_url().'Productos');
    }
    function datos(){
        $idproducto=$_POST['idproducto'];
        $query=$this->db->query("SELECT * FROM producto WHERE idproducto='$idproducto'");
        echo json_encode( $query->result_array());
    }
    function update()
    {
        if ($_SESSION['tipo'] == "") {
            header("Location: " . base_url());
        }
        $nombre = strtoupper($_POST['nombre']);
        $idproducto=$_POST['idproducto'];
        $precio = $_POST['precio'];
        $stock = $_POST['stock'];
        $farmacologica = $_POST['farmacologica'];
        $fechavencimiento = $_POST['fechavencimiento'];
        $distribuidora = $_POST['distribuidora'];

        $query = $this->db->query("UPDATE producto SET 
        nombre='$nombre',
        precio='$precio',
        cantidad='$stock',
        farmacologica='$farmacologica',
        fechavencimiento='$fechavencimiento',
        distribuidora='$distribuidora'
        WHERE
       idproducto='$idproducto';");
        header("Location: ".base_url().'Productos');
    }
    function delete($id){
        if ($_SESSION['tipo'] == "") {
            header("Location: " . base_url());
        }
        $query=$this->db->query("SELECT * FROM producto WHERE idproducto='$id'");
        $estado=$query->row()->estado;
        if($estado=='ACTIVO')
            $query = $this->db->query("UPDATE producto SET ESTADO='INACTIVO' WHERE idproducto='$id'");
        else
            $query = $this->db->query("UPDATE producto SET ESTADO='ACTIVO' WHERE idproducto='$id'");
//        $query = $this->db->query("DELETE FROM producto WHERE idproducto='$id'");
        header("Location: ".base_url().'Productos');
    }

}
