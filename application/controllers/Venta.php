<?php
require('mc_table.php');
require('NumeroALetras.php');
require "phpqrcode/qrlib.php";
require "ControlCode.php";
require "autoload.php";
use Mike42\Escpos\Printer;
use Mike42\Escpos\EscposImage;
use Mike42\Escpos\PrintConnectors\WindowsPrintConnector;
class Venta extends CI_Controller{
    function index(){
        if ($_SESSION['tipo']==""){
            header("Location: ".base_url());
        }
        $data['title']='Gestionar Venta';
        $data['css']="<link rel='stylesheet' href='".base_url()."assets/css/jquery.dataTables.min.css'>
        <link rel='stylesheet' href='".base_url()."assets/css/buttons.dataTables.min.css'>
        ";
        $this->load->view('templates/header',$data);
        $this->load->view('venta');
        $data['tipo']="info";
        $data['msg']="Gestionar Venta";
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
    function cliente(){
        $ci=$_POST['ci'];
        $query=$this->db->query("SELECT * FROM paciente WHERE ci='$ci'");
        //$row=$query->row();
        echo json_encode($query->result_array());
    }
    function insert()
    {
        if ($_SESSION['tipo'] == "") {
            header("Location: " . base_url());
        }
        $nombre = strtoupper($_POST['nombre']);
        $tipo = $_POST['tipo'];
        $query = $this->db->query("INSERT INTO tratamiento(nombre,idtipotratamiento) 
VALUES ('$nombre','$tipo');");
        header("Location: ".base_url().'Tratamientos');
    }
    function datosproducto(){
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
        $idtratamiento=$_POST['idtratamiento'];
        $tipo = $_POST['tipo'];
        $query = $this->db->query("UPDATE tratamiento SET 
        nombre='$nombre',
        idtipotratamiento='$tipo'
        WHERE
        idtratamiento='$idtratamiento';
");
        header("Location: ".base_url().'Tratamientos');
    }
    function delete($id){
        if ($_SESSION['tipo'] == "") {
            header("Location: " . base_url());
        }

        $query = $this->db->query("DELETE FROM tratamiento WHERE idtratamiento='$id'");
        header("Location: ".base_url().'Tratamientos');
    }
    function imprimir(){
        if (!isset($_POST['tipo'])){
            $tipo='ORDEN';
        }

        $query=$this->db->query("SELECT *  FROM paciente WHERE ci='".$_POST['ci']."'");
        //$row=$query->row();
        //$nombres=$row->nombres;
        //$apellidos=$row->apellidos;
        $total= number_format( $_POST['total'],2);
        $monto=$total;
        $razon=$_POST['razon'];
        $row=$query->row();
        if ($query->num_rows()==0){
            $this->db->query("INSERT INTO paciente(ci,apellidos) VALUES('".$_POST['ci']."','$razon')");
            $idpaciente=$this->db->insert_id();
        }else{
            $idpaciente=$row->idpaciente;
            $apellido=$row->apellidos;
            if ($apellido!=$razon)
                $this->db->query("UPDATE paciente SET apellidos='$razon' WHERE ci='".$_POST['ci']."'");
        }
        if ($tipo=='ORDEN'){
            $this->db->query("INSERT INTO factura(
            idpaciente,
            total,
            codigocontrol,
            iddosificacion,
            nrofactura,
            idusuario,
            estado) VALUES(
            '$idpaciente',
            '$total',
            '',
            '',
            '',
            '".$_SESSION['idusuario']."',
            '$tipo')");
        }else{
        $query=$this->db->query("SELECT * FROM dosificacion WHERE estado='ACTIVO' ORDER BY iddosificacion desc");
        $row=$query->row();
        if(!isset($row->desde)){
            echo "No exite dosificacion, no se puede realizar la venta";
            exit;
        }

        $desde = $row->desde;
        $hasta = $row->hasta;
        $fecha=date("Y-m-d");
        if(($fecha >= $desde) && ($fecha <= $hasta)) {
        } else {
            echo "No se puede completar por que las fecha de dosificacion no corresponde a este dia ";
            exit;
        }
        $nrotramite = $row->nrotramite;
        $nroautorizacion = $row->nroautorizacion;
        $nrofactura = $row->nrofacturai;
        $llave = $row->llave;
        $leyenda = $row->leyenda;
        $iddosificacion = $row->iddosificacion;
        $query=$this->db->query("SELECT count(*) as cantidad FROM factura WHERE iddosificacion=$iddosificacion");
        $row=$query->row();
        $numerodefactura=$row->cantidad+$nrofactura;
        $class2 = new ControlCode();
        $nitci="170444028";
        $fecha=date("Ymd");
        //$monto="120.50";


        $codigo=$class2->generate($nroautorizacion, $numerodefactura, $nitci,$fecha, $monto, $llave);
        //echo $codigo;

        $this->db->query("INSERT INTO factura(
idpaciente,
total,
codigocontrol,
iddosificacion,
nrofactura,
idusuario) VALUES(
'$idpaciente',
'$total',
'$codigo',
'$iddosificacion',
'$numerodefactura',
'".$_SESSION['idusuario']."')");
        }
        $idfacura=$this->db->insert_id();

        $query=$this->db->query("SELECT * FROM producto");
        foreach ($query->result() as $row){
            if(isset($_POST['p'.$row->idproducto])){
                $this->db->query("UPDATE producto SET cantidad=cantidad-".$_POST['c'.$row->idproducto]." WHERE idproducto='$row->idproducto'");
                $this->db->query("INSERT INTO detallefactura(
idfactura,
idproducto,
precio,
cantidad,
subtotal) 
VALUES(
'$idfacura',
'$row->idproducto',
'".$_POST['p'.$row->idproducto]."',
'".$_POST['c'.$row->idproducto]."',
'".$_POST['s'.$row->idproducto]."'
)");
            }
        }
        header("Location: ".base_url()."Venta/printfactura2/".$idfacura);

    }
    public function printfactura($idfactura){
        $nombre_impresora = "POS";
        /*
            Intentaremos cargar e imprimir
            el logo
        */

        /*
            Ahora vamos a imprimir un encabezado
        */
        $query=$this->db->query("SELECT * FROM factura f
INNER JOIN dosificacion d ON f.iddosificacion=d.iddosificacion
INNER JOIN paciente p ON p.idpaciente=f.idpaciente
WHERE f.idfactura='$idfactura'");
        $row=$query->row();
        $nrofactura=$row->nrofactura;
        $nroautorizacion=$row->nroautorizacion;
        $total=number_format($row->total,2);
        $d = explode('.',$total);
        $entero=$d[0];
        $decimal=$d[1];
        $fecha=$row->fecha;
        $nombres=$row->nombres;
        $apellidos=$row->apellidos;
        $ci=$row->ci;
        $codigocontrol=$row->codigocontrol;
        $hasta=$row->hasta;
        $leyenda=$row->leyenda;
        $nit="170444028";


        $connector = new WindowsPrintConnector($nombre_impresora);
        $printer = new Printer($connector);
        echo 1;
        /*
            Vamos a imprimir un logotipo
            opcional. Recuerda que esto
            no funcionará en todas las
            impresoras

            Pequeña nota: Es recomendable que la imagen no sea
            transparente (aunque sea png hay que quitar el canal alfa)
            y que tenga una resolución baja. En mi caso
            la imagen que uso es de 250 x 250
        */

# Vamos a alinear al centro lo próximo que imprimamos
        $printer->setJustification(Printer::JUSTIFY_CENTER);

        $printer->text("\n"."ESCENCIA SPA MEDICO LTDA." . "\n");
        $printer->text("Lo ultimo en tecnologia estetica sin cirugia" . "\n");
        $printer->text("CALLE BOLIVAR ENTRE POTOSI y 6 DE OCTUBRE NRO. 440(ZONA: CENTRAL)" . "\n");
        $printer->text("Teléfono 5210229 Celular: 60413300" . "\n");
        $printer->text("ORURO-BOLIVIA" . "\n");
        $printer->text("FACTURA". "\n");
        $printer->text("-----------------------------" . "\n");
        $printer->text("NIT: 170444028 \n");
        $printer->text("NRO FACTURA:$nrofactura \n");
        $printer->text("NRO AUTORIZACION: $nroautorizacion". "\n");
        $printer->setJustification(Printer::JUSTIFY_LEFT);
        $printer->text("FECHA: $fecha\n");
        $printer->text("Señor(es): $apellidos $nombres \n");
        $printer->text("CI/NIT: $ci". "\n");
        $printer->text("-----------------------------" . "\n");
        $printer->text("CANT  DESCRIPCION    P.U   IMP.\n");
        $printer->text("-----------------------------"."\n");
        /*
            Ahora vamos a imprimir los
            productos
        */
        /*Alinear a la izquierda para la cantidad y el nombre*/
        $printer->setJustification(Printer::JUSTIFY_LEFT);
        $query=$this->db->query("SELECT * FROM detallefactura d 
INNER JOIN producto p ON p.idproducto=d.idproducto
WHERE d.idfactura='$idfactura'");
        foreach ($query->result() as $row){
            $printer->text("$row->nombre\n");
            $printer->text( "$row->cantidad           $row->precio $row->subtotal   \n");
        }
        /*
            Terminamos de imprimir
            los productos, ahora va el total
        */
        $printer->text("-----------------------------"."\n");
        $printer->setJustification(Printer::JUSTIFY_RIGHT);
        $printer->text("SUBTOTAL: $total Bs.\n");
        $printer->text("IVA: 0.00 Bs.\n");
        $printer->text("TOTAL: $total Bs.\n");

        /*
            Podemos poner también un pie de página
        */
        $c= new NumeroALetras();
        $printer->text("SON: ".$c->convertir($entero)." $decimal/100 Bs.\n");
        $printer->text("-----------------------------"."\n");
        $printer->text("Cod. de Control: ".$codigocontrol." \n");
        $printer->text("Fecha Lim. de Emision: ".substr($hasta,0,10)."\n");


        $printer -> setJustification(Printer::JUSTIFY_CENTER);
        $testStr = "$nit|$nrofactura|$nroautorizacion|".date('d/m/Y',$fecha)."|$total|$total|$codigocontrol|$ci|0|0|0|0";
        $models = array(
            //Printer::QR_MODEL_1 => "QR Model 1",
            Printer::QR_MODEL_2 => "ESTA FACTURA CONTRIBUYE AL DESARROLLO DEL PAIS. EL USO ILICITO DE ESTA SERA SANCIONADO DE ACUERDO A LEY"
            //Printer::QR_MICRO => "Micro QR code\n(not supported on all printers)"
        );
        foreach ($models as $model => $name) {
            $printer -> qrCode($testStr, Printer::QR_ECLEVEL_L, 4, $model);
            $printer -> text("$name\n");
            $printer -> feed();
        }
        $printer->setJustification(Printer::JUSTIFY_LEFT);
        $printer->text($leyenda."\n");
        $printer->text("PUNTO: ".gethostname()." \n");
        $printer->text("USUARIO: ".$_SESSION['nombre']." \n");
        $printer->text("NUMERO: $idfactura \n");

        /*
            Cortamos el papel. Si nuestra impresora
            no tiene soporte para ello, no generará
            ningún error
        */
        $printer->cut();


        /*
            Para imprimir realmente, tenemos que "cerrar"
            la conexión con la impresora. Recuerda incluir esto al final de todos los archivos
        */
        $printer->close();
        header("Location: ".base_url()."Venta");
    }
    public function printfactura2($idfactura=''){
        
        $query=$this->db->query("SELECT * FROM factura f
INNER JOIN dosificacion d ON f.iddosificacion=d.iddosificacion
INNER JOIN paciente p ON p.idpaciente=f.idpaciente
WHERE f.idfactura='$idfactura'");
        $row=$query->row();
        $nrofactura=$row->nrofactura;
        $nroautorizacion=$row->nroautorizacion;
        $total=number_format($row->total,2);
        $d = explode('.',$total);
        $entero=$d[0];
        $decimal=$d[1];
        $fecha=$row->fecha;
        $nombres=$row->nombres;
        $apellidos=$row->apellidos;
        $ci=$row->ci;
        $codigocontrol=$row->codigocontrol;
        $hasta=$row->hasta;
        $leyenda=$row->leyenda;
        $nit="170444028";

        $c= new NumeroALetras();
    //echo date('d/m/Y', strtotime($fecha));
    //exit;
        $testStr = "$nit|$nrofactura|$nroautorizacion|".date('d/m/Y',strtotime($fecha))."|$total|$total|$codigocontrol|$ci|0|0|0|0";
        QRcode::png($testStr, 'temp/test.png', 'L', 4, 2);
        require_once('tcpdf.php');

// create new PDF document
        $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// remove default header/footer
        $pdf->setPrintHeader(false);
        $pdf->setPrintFooter(false);
        $pdf->AddPage();
        $pdf->SetFont('times', '', 9);

        $query=$this->db->query("SELECT p.idproducto,nombre,d.cantidad,d.precio,d.subtotal 
FROM detallefactura d 
INNER JOIN producto p ON p.idproducto=d.idproducto
WHERE d.idfactura='$idfactura'");
        $t="";
        foreach ($query->result() as $row){
            $t=$t.'<tr>
                <td>'.$row->idproducto.'</td>
                <td>'.$row->nombre.'</td>
                <td>'.$row->cantidad.'</td>
                <td>'.$row->precio.'</td>
                <td>'.$row->subtotal.'</td>
                </tr>';
        }
        $html='<table>
<tr align="center" >
<td>
Lo ultimo en tecnologia estetica sin cirugia<br>
        CALLE BOLIVAR ENTRE POTOSI y 6 DE OCTUBRE NRO. 440(ZONA: CENTRAL)<br>
        Teléfono 5210229 Celular: 60413300<br>
</td>
<td>
        <small style="font-weight: bold;font-size: 15px">FACTURA</small> <br>
        
        ORURO-BOLIVIA<br>
</td>
<td>
<table border="1">
<tr>
<td>
<b>NIT: 170444028 </b><br>
FACTURA N° '.$nrofactura.' <br>
AUTORIZACION N° '.$nroautorizacion.' <br>
 <b> ORIGINAL CLIENTE</b>
</td>
</tr>
</table>
</td>
</tr>
</table>
<table border="">
<tr>
<td>
<table>
<tr>
<td>
 <b>Oruro:</b> '.$fecha.' <br>
 <b>Señores (es)</b> '.$apellidos.' 
</td>
<td>
 <b>CI/NIT:</b> '.$ci.'
</td>
</tr>
</table>
</td>
</tr>
</table>
<table border="0">
<tr>
<td><b>CODIGO</b></td>
<td><b>DESCRIPCION</b></td>
<td><b>CANTIDAD</b></td>
<td><b>PRECIO UNITARIO</b></td>
<td><b>PRECIO TOTAL</b></td>
</tr>
'.$t.'
<tr>
<td></td>
<td></td>
<td></td>
<td><b>TOTAL:</b></td>
<td>'.$total.'</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td><b>DESCUENTO:</b></td>
<td>0</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td><b>NETO TOTAL:</b></td>
<td>'.$total.'</td>
</tr>

</table>
<br>
<b>SON: </b>'.$c->convertir($entero).' '.$decimal.'/100 Bs. <br>
<b>CODIGO DE CONTROL:</b> '.$codigocontrol.' <br>
<b>FECHA LIMITE DE EMISION:</b> '.$hasta.' <br>
<div align="center">
<img src="temp/test.png" alt="qr" width="70"> <br>
ESTA FACTURA CONTRIBUYE AL DESARROLLO DEL PAIS. EL USO ILICITO DE ESTA SERA SANCIONADO DE ACUERDO A LEY
</div>
'.$leyenda.' <br>
<b>PUNTO:</b> '.gethostname().' <br>
<b>USUARIO:</b> '.$_SESSION['nombre'].' <br>
<b>NUMERO:</b> '.$idfactura.' <br>  
';


        $pdf->writeHTML($html, true, false, true, false, '');

//Close and output PDF document
        $pdf->Output('Factura.pdf', 'I');

    }
}
