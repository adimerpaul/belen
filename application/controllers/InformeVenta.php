<?php
require_once('tcpdf.php');
class InformeVenta extends CI_Controller
{
function index(){
    if ($_SESSION['tipo']==""){
        header("Location: ".base_url());
    }
    $data['title']='Informe de Ventas';
    $data['css']="<link rel='stylesheet' href='".base_url()."assets/css/jquery.dataTables.min.css'>
        <link rel='stylesheet' href='".base_url()."assets/css/buttons.dataTables.min.css'>";
    $this->load->view('templates/header',$data);
    $this->load->view('informeventa');
    $data['tipo']="info";
    $data['msg']="Informe de ventas";
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
function imprimir(){
// create new PDF document
    $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set document information
    $pdf->SetCreator(PDF_CREATOR);
    $pdf->SetAuthor('Nicola Asuni');
    $pdf->SetTitle('Informe');
    $pdf->SetSubject('TCPDF Tutorial');
    $pdf->SetKeywords('TCPDF, PDF, example, test, guide');

// remove default header/footer
    $pdf->setPrintHeader(false);
    $pdf->setPrintFooter(false);

// set default monospaced font
    $pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);


// set auto page breaks
    $pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

// set image scale factor
    $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

// ---------------------------------------------------------

// set font
    $pdf->SetFont('times', '', 12);

// add a page
    $pdf->AddPage();
    $query=$this->db->query("SELECT *
    FROM factura WHERE idusuario='".$_SESSION['idusuario']."'");
    $c=0;
    $t=0;
    $text="";
    foreach ($query->result() as $row){
        $c++;
        $text=$text. '<tr>
                <td>'.$c.'</td>
                <td>'.$row->idfactura.'</td>
                <td>'.$row->estado.'</td>
                <td>'.$row->fecha.'</td>
                <td style="text-align: right">'.$row->total.'</td>
               </tr>';
        $t=$t+$row->total;
    }
    $text=$text.'<tr>
                <td colspan="4" style="text-align: right"><b>TOTAL</b></td>
                <td style="text-align: right">'.$t.'</td>
               </tr>';
// set some text to print
    $txt = '<div style="font-weight: bold;text-align: center">INFORME DE VENTAS DEL DÍA</div>    
<b>Fecha: </b> '.date('d/m/Y').'<br>
<b>Usuario:</b> '.$_SESSION['nombre'].' <br>
<table >
    <thead class="table-dark">
    <tr>
        <th scope="col">#</th>
        <th scope="col">Nrofactura</th>
        <th scope="col">Estado</th>
        <th scope="col">Fecha y hora de venta</th>
        <th scope="col" style="text-align: right">Subtotal</th>
    </tr>
    </thead>
    <tbody>
        '.$text.'
    </tbody>
</table>
<br>
<br>
<table>
<tr>
<td>
    <div style="text-align: center;">
        <span style="border-top: 1px solid black">Recibi conforme</span>
    </div>
</td>
<td>
    <div style="text-align: center;">
        <span style="border-top: 1px solid black">Entrege conforme</span>
    </div>
</td>
</tr>
</table>
';

// print a block of text using Write()
    $pdf->writeHTMLCell(0, 0, '', '', $txt, 0, 1, 0, true, '', true);
// ---------------------------------------------------------

//Close and output PDF document
    $pdf->Output('example_002.pdf', 'I');
}
}