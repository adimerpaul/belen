<div class="row">
    <div class="col-sm-6">
        <form method="post" action="<?=base_url()?>Venta/imprimir" target="_blank">
            <div class="form-group row">
                <label for="ci" class="col-sm-3 col-form-label">CI/NIT</label>
                <div class="col-sm-9">
                    <input type="text" id="ci" name="ci" class="form-control" placeholder="CI/NIT" required>
                </div>
            </div>
            <div class="form-group row" id="r">
                <label for="razon" class="col-sm-3 col-form-label">Razon Social</label>
                <div class="col-sm-9">
                    <input type="text" id="razon" name="razon"  class="form-control" placeholder="Nombre razon" required>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-3"><label for="exampleInputPassword1">PRODUCTOS </label></div>
                    <div class="col-3"><a href="" class="btn btn-warning m-1"> <i class="fa fa-recycle"></i> Reiniciar </a></div>
                    <div class="col-6">
                        <div class="text-right">
                            <input type="checkbox" checked data-toggle="toggle">
                        </div>
                    </div>
                </div>
                <table class="table">
                    <thead class="thead-dark">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Detalle del Producto</th>
                        <th scope="col">Precio</th>
                        <th scope="col">Cantidad</th>

                        <th scope="col">subtotal</th>
                    </tr>
                    </thead>
                    <tbody id="detalle">
                    </tbody>
                    <tfoot class="thead-dark">
                    <th scope="col"></th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                    <th scope="col">TOTAL : <span id="to">0</span>
                        <input type="text" id="total" name="total" hidden>
                    </th>
                    </tfoot>
                </table>
            </div>
            <button type="submit"  class="btn btn-primary"> <i class="fa fa-dollar"></i> Terminar venta</button>
        </form>
    </div>
    <div class="col-sm-6">
        <table id="productos" class="display" style="width:100%">
            <thead>
            <tr>
                <th>Producto</th>
                <th>Disponible</th>
                <th>Precio</th>
                <th>Agregar</th>
            </tr>
            </thead>
            <tbody>
            <?php
            $query=$this->db->query("SELECT * FROM producto WHERE cantidad>=1 AND estado='ACTIVO'");
            foreach ($query->result() as $row){
                echo "<tr>
                            <td>$row->nombre</td>
                            <td>$row->cantidad</td>
                            <td>$row->precio</td>
                            <td>
                                <button type='button' class='btn btn-success btn-sm' data-idproducto='$row->idproducto' data-precio='$row->precio' data-cantidad='$row->cantidad' data-nombre='$row->nombre' data-toggle='modal' data-target='#exampleModal'>
                                    <i class='fa fa-plus'></i> Agregar
                            </td>
                        </tr>";
            }
            ?>
            </tbody>
        </table>
    </div>
</div>

<!-- Button trigger modal -->
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Cantidad de productos</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="formulario" >
                    <div class="form-group row">
                        <label for="precio" class="col-sm-3 col-form-label">Precio</label>
                        <div class="col-sm-9">
                            <input type="number" id="precio" name="precio" step="0.01" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="cantidad" class="col-sm-3 col-form-label">Cantidad</label>
                        <div class="col-sm-9">
                            <input type="number" id="cantidad" name="cantidad" value="1" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="subtotal" class="col-sm-3 col-form-label"><b>SUBTOTAL</b></label>
                        <div class="col-sm-9">
                            <input type="number" id="subtotal" name="subtotal" step="0.01" value="0" class="form-control" required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal"> <i class="fa fa-close"></i> Cerrar</button>
                        <button type="submit" class="btn btn-success"> <i class="fa fa-check"></i> Agregar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script !src="">
    window.onload=function (e) {
        var producto="";
        var idproducto;
        $(document).ready(function() {
            $('#productos').DataTable({
                "language": {
                    "sProcessing":     "Procesando...",
                    "sLengthMenu":     "Mostrar _MENU_ registros",
                    "sZeroRecords":    "No se encontraron resultados",
                    "sEmptyTable":     "Ningún dato disponible en esta tabla =(",
                    "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                    "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
                    "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
                    "sInfoPostFix":    "",
                    "sSearch":         "Buscar:",
                    "sUrl":            "",
                    "sInfoThousands":  ",",
                    "sLoadingRecords": "Cargando...",
                    "oPaginate": {
                        "sFirst":    "Primero",
                        "sLast":     "Último",
                        "sNext":     "Siguiente",
                        "sPrevious": "Anterior"
                    },
                    "oAria": {
                        "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
                        "sSortDescending": ": Activar para ordenar la columna de manera descendente"
                    },
                    "buttons": {
                        "copy": "Copiar",
                        "colvis": "Visibilidad"
                    }
                }
            });
        } );
        $('#exampleModal').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget) // Button that triggered the modal
            var nombre = button.data('nombre');
            var precio = button.data('precio');
            var cantidad = button.data('cantidad');
            idproducto = button.data('idproducto');
            $('#precio').val(precio);
            $('#cantidad').val(1);
            $('#subtotal').val(precio*1);
            var modal = $(this);
            modal.find('.modal-title').text('Producto ' + nombre);
            producto=nombre;
            // modal.find('.modal-body input').val(recipient)
        })
            $('#idproducto').change(function (e) {
                var datos={
                    'idproducto':$('#idproducto').val()
                };
                //console.log($('#idproducto').val());
                $.ajax({
                    data:datos,
                    type:'POST',
                    url:'Venta/datosproducto',
                    success:function (e) {
                        //console.log(e);
                        var dato=JSON.parse(e)[0];
                        $('#precio').val(dato.precio);
                        var precio=$('#precio').val();
                        var cantidad=$('#cantidad').val();
                        $('#subtotal').val(precio*cantidad);
                    }
                });
            });
            function cambio(e){
                /*var precio=$('#precio').val();
                var cantidad=$('#cantidad').val();
                $('#subtotal').val(precio*cantidad);*/
                //console.log('aaa');
            }
//$('#cantidad').change(cambio());
            $('#precio,#cantidad').keyup(function (e) {
                var precio=$('#precio').val();
                var cantidad=$('#cantidad').val();
                $('#subtotal').val(precio*cantidad);
            });
            $('#ci').keyup(function (e) {
                var datos={
                    'ci':$('#ci').val()
                };
                $.ajax({
                    data:datos,
                    type: 'POST',
                    url: 'Venta/cliente',
                    success:function (e) {
                        //console.log(e);
                        var datos=JSON.parse(e)[0];
                        if (datos !=null){
                            $('#razon').val(datos.apellidos);
                        }else{
                            $('#razon').val('');
                        }
                    }
                });
            });
            var total=0;
            var con=0;
            $('#formulario').submit(function (e) {
                    var precio=$('#precio').val();
                    var cantidad=$('#cantidad').val();
                    var subtotal=$('#subtotal').val();
                    //console.log(comprador);
                    con++;
                    total=parseFloat(total)+ parseFloat(subtotal);
                    $( "#detalle" ).append( "<tr>" +
                        "                <th scope='row'>"+con+"</th>" +
                        "                <td>"+producto+"</td>" +
                        "                <td>"+precio+"<input name='p"+idproducto+"' value='"+precio+"' hidden></td>" +
                        "                <td>"+cantidad+"<input name='c"+idproducto+"' value='"+cantidad+"' hidden></td>" +
                        "                <td>"+subtotal+"<input name='s"+idproducto+"' value='"+subtotal+"' hidden></td>" +
                        "            </tr>" );

                $('#to').html(total);
                $('#total').val(total);
                $('#exampleModal').modal('hide');
                return false;
            });
    }
</script>
