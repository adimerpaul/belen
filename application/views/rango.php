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
        echo "
        <tr>
            <td>".$row->fecha."</td>
            <td>".$row->total."</td>
            <td>".$row->apellidos."</td>
            <td>".$row->estado."</td>
            <td>
                <button class='btn btn-info p-1' data-toggle='modal' data-target='#exampleModal' data-idfactura='$row->idfactura'> <i class='fa fa-file'></i> Detalle</button>
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
                <table class="table">
                    <thead class="thead-dark">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Producto</th>
                        <th scope="col">Cantidad</th>
                        <th scope="col">Subtotal</th>
                    </tr>
                    </thead>
                    <tbody id="detalle">
                    </tbody>
                    <tfoot class="thead-dark">
                    <tr>
                        <th scope="col"></th>
                        <th scope="col"></th>
                        <th scope="col">DESCUENTO</th>
                        <th scope="col"><div id="descuento"></div></th>
                    </tr>
                    <tr>
                            <th scope="col"></th>
                            <th scope="col"></th>
                            <th scope="col">TOTAL</th>
                            <th scope="col"><div id="total"></div></th>
                        </tr>
                    </tfoot>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal"> <i class="fa fa-close"></i>Cerrar</button>
<!--                <button type="button" class="btn btn-primary">Save changes</button>-->
            </div>
        </div>
    </div>
</div>
<script>
    window.onload=function () {
        $('#exampleModal').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget) // Button that triggered the modal
            var idfactura = button.data('idfactura');
            $.ajax({
                url:'<?=base_url()?>Rango/detalle/'+idfactura,
                success:function (e) {
                    // console.log(e);
                    var datos=JSON.parse(e);
                    $('#detalle').html('');
                    var cont=0;
                    var total=0;
                    // console.log(datos);
                    datos.forEach(function (e) {
                        // console.log(e);
                        cont++;
                        $('#detalle').append('<tr>' +
                            '<td>'+cont+'</td>' +
                            '<td>'+e.nombre+'</td>' +
                            '<td>'+e.cantidad+'</td>' +
                            '<td>'+e.subtotal+'</td>' +
                            '</tr>');
                        total+= parseFloat(e.subtotal);
                    })
                    $('#total').html(total);
                    $('#descuento').html(datos[0].descuento);
                }
            });
            // console.log(idfactura);
            // var modal = $(this)
            // modal.find('.modal-title').text('New message to ' + recipient)
            // modal.find('.modal-body input').val(recipient)
        })
    }
</script>
