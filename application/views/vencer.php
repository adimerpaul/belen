<style>
    label,div,input,form{
        padding: 0px;
        margin: 0px;
        border: 0px;
    }
    .sinespacio{
        padding: 0px;
        margin: 0px;
        border: 0px;
    }
    .sinespaciotexto{
        padding: 0px;
        margin: 0px;
    }
    label::first-letter {
        text-transform: uppercase;
    }
</style>
<!-- Button trigger modal -->
<div class="mt-1"></div>
<table id="example" class="display nowrap" style="width:100%">
    <thead>
    <tr>
        <th scope="col">Nombre</th>
        <th scope="col">Cantidad</th>
        <th scope="col">Accion farmacologica</th>
        <th scope="col">Cantidad</th>
        <th scope="col">Fech. vencimi.</th>
        <th scope="col">Estado</th>
    </tr>
    </thead>
    <tbody>
    <?php
    $query=$this->db->query("SELECT *
FROM producto 
WHERE cantidad>=1 AND estado='ACTIVO'
");
    foreach ($query->result() as $row){

//        if($row->estado2=="POR VENCER"){
//            $t="<div class='p-0 text-center bg-warning text-white'>POR VENCER</div>";
//
//        }else{
//            $t="<div class='p-0 text-center bg-danger text-white'>VENCIDO</div>";
//        }
        $query2=$this->db->query("SELECT * FROM lote WHERE idproducto='$row->idproducto'");
        $cantidad="";
        $fechavecimiento="";
        $estado="";
        if ($query2->num_rows()>0){
            foreach ($query2->result() as $row2){
                $cantidad=$cantidad."$row2->cantidad<br>";
                $fechavecimiento=$fechavecimiento."$row2->fechavencimiento<br>";

                $hoy= new DateTime(date('Y-m-d'));
                $fecha= new DateTime($row2->fechavencimiento);
                $dias=$fecha->diff($hoy);
                if($fecha<$hoy){
                    $estado=$estado."<small class='bg bg-danger text-white p-1'>VENCIDO </small><br>";
                }elseif ($dias->days<=90){
                    $estado=$estado."<small class='bg bg-warning text-white p-1'>POR VENCER </small><br>";
                }else{
                    $estado=$estado."<small class='bg bg-success text-white p-1'>VIGENTE </small><br>";
                }
            }
        }
        echo "
        <tr>
            <td>".$row->nombre."</td>
            <td>".$row->cantidad."
            <div class='progress'>
              <div class='progress-bar' role='progressbar' style='width: $row->cantidad%;' aria-valuenow='$row->cantidad' aria-valuemin='0' aria-valuemax='100'>$row->cantidad</div>
            </div>
            </td>
            <td>".$row->farmacologica."</td>
            <td>".$cantidad."</td>
            <td>".$fechavecimiento."</td>
            <td>$estado</td>
        </tr>";
    }
    ?>
    </tbody>
</table>
<script >
    var eli=document.getElementsByClassName("eli");
    for (var i=0;i<eli.length;i++){
        eli[i].addEventListener('click',function (e) {
            if (!confirm("Seguro de inactivar?, no esta disponible para ventas")){
                e.preventDefault();
            }
        })
    }

</script>
<!-- Modal -->
