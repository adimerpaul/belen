<a href="<?=base_url()?>InformeVenta/imprimir" target="_blank" class="btn btn-warning btn p-2 m-2"><i class="fa fa-print"></i> Imprimir</a>
<table class="table table-striped">
    <thead class="table-dark">
    <tr>
        <th scope="col">#</th>
        <th scope="col">Nrofactura</th>
        <th scope="col">Estado</th>
        <th scope="col">Hora</th>
        <th scope="col">Subtotal</th>
    </tr>
    </thead>
    <tbody>
    <?php
    $query=$this->db->query("SELECT *
    FROM factura WHERE idusuario='".$_SESSION['idusuario']."'");
    $c=0;
    $t=0;
    foreach ($query->result() as $row){
        $c++;
        echo "<tr>
                <td>$c</td>
                <td>$row->idfactura</td>
                <td>$row->estado</td>
                <td>$row->fecha</td>
                <td>$row->total</td>
               </tr>";
        $t=$t+$row->total;
    }
    echo "<tr>
                <td colspan='4' style='text-align: right'><b>TOTAL</b></td>
                <td>$t</td>
               </tr>";
    ?>
    </tbody>
</table>