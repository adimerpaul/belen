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
<form method="post" action="<?=base_url()?>Rango/index">
    <div class="form-row">
        <div class="form-group col-md-5">
            <label for="">Fecha inicio</label>
            <input type="date" name="fecha1" class="form-control" value="<?=$fecha1?>" required>
        </div>
        <div class="form-group col-md-5">
            <label for="">Fecha inicio</label>
            <input type="date" name="fecha2" class="form-control" value="<?=$fecha2?>" required>
        </div>
        <div class="form-group col-md-2">
            <label for="">Verificar</label>
            <button class="btn btn-success btn-block"><i class="fa fa-check-circle"></i> Verificar</button>
        </div>
    </div>
</form>
<div class="mt-1"></div>
<table id="example" class="display nowrap" style="width:100%">
    <thead>
    <tr>
        <th>Fecha y hora</th>
        <th>Total</th>
        <th>Razon</th>
        <th>Estado</th>
    </tr>
    </thead>
    <tbody>
    <?php
    $query=$this->db->query("SELECT f.fecha,total,p.apellidos,estado FROM factura f INNER JOIN paciente p ON p.idpaciente=f.idpaciente
WHERE date(f.fecha)>='$fecha1' AND date(f.fecha)<='$fecha2'");
    foreach ($query->result() as $row){
        if ($row->estado=="ACTIVO"){
            $estado="<div class='bg text-white text-center  bg-success'>ACTIVO</div>";
        }else{
            $estado="<div class='bg text-white text-center bg-danger'>INACTIVO</div>";
        }
        echo "
        <tr>
            <td>".$row->fecha."</td>
            <td>".$row->total."</td>
            <td>".$row->apellidos."</td>
            <td>".$row->estado."</td>
        </tr>";
    }
    ?>
    </tbody>
</table>
