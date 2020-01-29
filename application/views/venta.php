<div class="row">
    <div class="col-sm-6">
        <form method="post" action="<?=base_url()?>Venta/imprimir">
            <div class="form-group row">
                <label for="ci" class="col-sm-3 col-form-label">CI/NIT</label>
                <div class="col-sm-9">
                    <input type="text" id="ci" name="ci" class="form-control" placeholder="CI/NIT">
                </div>
            </div>
            <div class="form-group row" id="r">
                <label for="razon" class="col-sm-3 col-form-label">Razon Social</label>
                <div class="col-sm-9">
                    <input type="text" id="razon" name="razon"  class="form-control" placeholder="Nombre razon">
                </div>
            </div>
            <div class="form-group row" id="a">
                <label for="apellidos" class="col-sm-3 col-form-label">apellidos o razon</label>
                <div class="col-sm-9">
                    <input type="text" id="apellidos" name="apellidos"  class="form-control" placeholder="apellidos">
                </div>
            </div>
            <div class="form-group row" id="n">
                <label for="nombres" class="col-sm-3 col-form-label">nombres</label>
                <div class="col-sm-9">
                    <input type="text" id="nombres" name="nombres"  class="form-control" placeholder="nombres">
                </div>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">PRODUCTOS
                    <a href="" class="btn btn-warning"> <i class="fa fa-recycle"></i> Reiniciar </a>
                </label>
                <table class="table">
                    <thead class="thead-dark">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Comprador</th>
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
                    <th scope="col"></th>
                    <th scope="col">TOTAL : <span id="to">0</span>
                        <input type="text" id="total" name="total" hidden>
                    </th>
                    </tfoot>
                </table>
            </div>
            <button type="submit" class="btn btn-primary"> <i class="fa fa-dollar"></i> Terminar venta</button>
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
                                <button type='button' class='btn btn-success btn-sm'>
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
                <h5 class="modal-title" id="exampleModalLabel">Agregar productos</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="formulario">
                    <div class="form-group row">
                        <label for="idproducto" class="col-sm-3 col-form-label">Producto</label>
                        <div class="col-sm-9">
                            <select name="idproducto" id="idproducto" class="form-control" required>
                                <option value="">Seleccionar...</option>
                                <?php
                                $query=$this->db->query("SELECT * FROM producto WHERE cantidad >0");
                                foreach ($query->result() as $row){
                                    echo "<option value='$row->idproducto'>$row->nombre / $row->cantidad</option>";
                                }
                                ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="precio" class="col-sm-3 col-form-label">Precio</label>
                        <div class="col-sm-9">
                            <input type="text" id="precio" name="precio" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="cantidad" class="col-sm-3 col-form-label">Cantidad</label>
                        <div class="col-sm-9">
                            <input type="text" id="cantidad" name="cantidad" value="1" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="subtotal" class="col-sm-3 col-form-label"><b>SUBTOTAL</b></label>
                        <div class="col-sm-9">
                            <input type="text" id="subtotal" name="subtotal" value="0" class="form-control">
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
            $('#cantidad').keyup(function (e) {
                var precio=$('#precio').val();
                var cantidad=$('#cantidad').val();
                $('#subtotal').val(precio*cantidad);
            });
            $('#precio').keyup(function (e) {
                var precio=$('#precio').val();
                var cantidad=$('#cantidad').val();
                $('#subtotal').val(precio*cantidad);
            });
            $('#a').hide();
            $('#n').hide();
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
                        console.log(datos);
                        if (datos !=null){
                            $('#r').show();
                            $('#razon').val(datos.apellidos+' '+datos.nombres);
                            $('#a').hide();
                            $('#n').hide();
                        }else{
                            $('#r').hide();
                            $('#razon').val('');
                            $('#a').show();
                            $('#n').show();
                        }
                    }
                });
            });
            var total=0;
            var con=0;
            $('#formulario').submit(function (e) {
                if ($('#idpaciente').val()=="") {
                    alert('Debe seleccionar un comprador');
                }else{
                    var comprador =$('#idpaciente option:selected').text();
                    var producto =$('#idproducto option:selected').text();
                    var idproducto =$('#idproducto').val();
                    var precio=$('#precio').val();
                    var cantidad=$('#cantidad').val();
                    var subtotal=$('#subtotal').val();
                    //console.log(comprador);
                    con++;
                    total=parseInt(total)+ parseInt(subtotal);
                    $( "#detalle" ).append( "<tr>" +
                        "                <th scope='row'>"+con+"</th>" +
                        "                <td>"+comprador+"</td>" +
                        "                <td>"+producto+"</td>" +
                        "                <td>"+precio+"<input name='p"+idproducto+"' value='"+precio+"' hidden></td>" +
                        "                <td>"+cantidad+"<input name='c"+idproducto+"' value='"+cantidad+"' hidden></td>" +
                        "                <td>"+subtotal+"<input name='s"+idproducto+"' value='"+subtotal+"' hidden></td>" +
                        "            </tr>" );
                }
                $('#to').html(total);
                $('#total').val(total);
                $('#exampleModal').modal('hide');
                return false;
            });
    }
</script>