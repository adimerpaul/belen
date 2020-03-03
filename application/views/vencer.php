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
        <th scope="col">Registro</th>
        <th scope="col">Fech. vencimi.</th>
        <th scope="col">Usuario</th>
        <th scope="col">Estado</th>
    </tr>
    </thead>
    <tbody>
    <?php
    $query=$this->db->query("SELECT *
                            FROM producto 
                            WHERE cantidad>0 AND estado='ACTIVO'
    ");
    foreach ($query->result() as $row){

//        if($row->estado2=="POR VENCER"){
//            $t="<div class='p-0 text-center bg-warning text-white'>POR VENCER</div>";
//
//        }else{
//            $t="<div class='p-0 text-center bg-danger text-white'>VENCIDO</div>";
//        }
        $query2=$this->db->query("SELECT * FROM lote WHERE idproducto='$row->idproducto' and cantidad<>0");
        $cantidad="";
        $fecharegistro="";
        $fechavecimiento="";
        $estado="";
        $usuarios="";
        if ($query2->num_rows()>0){
            foreach ($query2->result() as $row2){
                $cantidad=$cantidad."<div>$row2->cantidad</div>";
                $fecharegistro=$fecharegistro."<div>$row2->fecha</div>";
                $fechavecimiento=$fechavecimiento."<div>$row2->fechavencimiento</div>";
                $usuarios=$usuarios."<div>$row2->nombreusuario</div>";
                $anio = date('Y');
                $fecha = strtotime($row2->fechavencimiento);
                $vencimiento = date('Y', $fecha);
                if($vencimiento==$anio){
                    $estado=$estado."<small class='bg bg-danger text-white p-1' style='border-radius: 5px;'>VENCE ESTE AÑO</small><br>";
                }elseif ($vencimiento==($anio+1)){
                    $estado=$estado."<small class='bg bg-warning text-white p-1' style='border-radius: 5px;'>VENCE SIGUIENTE AÑO</small><br>";
                }elseif ($vencimiento>($anio+1)){
                    $estado=$estado."<small class='bg bg-success text-white p-1' style='border-radius: 5px;'>VIGENTE</small><br>";
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
            <td>".$fecharegistro."</td>
            <td>".$fechavecimiento."</td>
            <td>$usuarios</td>
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
            if (!confirm("Seguro que decea inactivar el producto?, ya no estara disponible para realizar ventas")){
                e.preventDefault();
            }
        })
    }

</script>
<!-- Modal -->
