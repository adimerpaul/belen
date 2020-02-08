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
        <th scope="col">Fecha de vencimiento</th>
        <th scope="col">Dias a vencer</th>
        <th scope="col">Estado</th>
    </tr>
    </thead>
    <tbody>
    <?php
    $query=$this->db->query("SELECT *,
(IF(fechavencimiento<NOW(), 'VENCIDO', 'POR VENCER')) as estado2,
IF(DATEDIFF(DATE_ADD(NOW(), INTERVAL 90 DAY), fechavencimiento)>90,
0,
90-DATEDIFF(DATE_ADD(NOW(), INTERVAL 90 DAY), fechavencimiento)) as dias
FROM producto 
WHERE cantidad>=1
AND  fechavencimiento<=DATE_ADD(NOW(), INTERVAL 90 DAY)
");
    foreach ($query->result() as $row){
        if($row->estado2=="POR VENCER"){
            $t="<div class='p-0 text-center bg-warning text-white'>POR VENCER</div>";

        }else{
            $t="<div class='p-0 text-center bg-danger text-white'>VENCIDO</div>";
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
            <td>".$row->fechavencimiento."</td>
            <td>".$row->dias."</td>
            <td>$t</td>
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
