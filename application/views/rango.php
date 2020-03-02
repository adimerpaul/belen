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
        <th>Detalle</th>
    </tr>
    </thead>
    <tbody>
    <?php
    $query=$this->db->query("SELECT f.fecha,total,p.apellidos,estado,f.idfactura FROM factura f INNER JOIN paciente p ON p.idpaciente=f.idpaciente
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
            <td>
                <button class='btn btn-info p-1' data-toggle='modal' data-target='#exampleModal' data-idventa='$row->idfactura'> <i class='fa fa-file'></i> Detalle</button>
            </td>
        </tr>";
    }
    ?>
    </tbody>
</table>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Detalle de factura</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
<script>
    window.onload=function () {
        $('#exampleModal').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget) // Button that triggered the modal
            var recipient = button.data('whatever') // Extract info from data-* attributes
            // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
            // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
            var modal = $(this)
            modal.find('.modal-title').text('New message to ' + recipient)
            modal.find('.modal-body input').val(recipient)
        })
    }
</script>
