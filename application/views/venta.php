<div class="row">
    <div class="col-sm-6">
        <form method="post" id="vender" action="<?=base_url()?>Venta/imprimir" target="_blank">
            <div class="form-group row">
                <label for="ci" class="col-sm-3 col-form-label">CI/NIT</label>
                <div class="col-sm-9">
                    <input type="text" id="ci" name="ci" class="form-control" placeholder="CI/NIT" required>
                </div>
            </div>
            <div class="form-group row" id="r">
                <label for="razon" class="col-sm-2 col-form-label">Razon Social</label>
                <div class="col-sm-4">
                    <input type="text" id="razon" name="razon"  class="form-control" placeholder="Nombre razon" required>
                </div>
                <label for="razon" class="col-sm-3 col-form-label">Gastado Mes</label>
                <div class="col-sm-3">
                        <div class="p-2 m-2" id="gastado"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-3"><label for="exampleInputPassword1">PRODUCTOS </label></div>
                    <div class="col-3"><a href="" class="btn btn-warning m-1"> <i class="fa fa-recycle"></i> Reiniciar </a></div>
                    <div class="col-6">
                        <div class="text-right">
                            <input type="checkbox" name="tipo" checked data-toggle="toggle" data-size="small" data-onstyle="success" data-offstyle="warning" data-on="F" data-off="O">
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

                        <th scope="col">Subtotal</th>
                    </tr>
                    </thead>
                    <tbody id="detalle"></tbody>
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
                if ($row->cantidad<10)
                    echo '<tr class="table-danger">';
                else
                    echo '<tr>';
                    echo '<td>'.$row->nombre.'</td>
                          <td>'.$row->cantidad.'</td>
                          <td>'.$row->precio.'</td>
                            <td>
                                <button type="button" class="btn btn-success btn-sm" data-idproducto="'.$row->idproducto.'" data-precio='.$row->precio.' data-cantidad='.$row->cantidad.' data-nombre="'.$row->nombre.'" data-farmacologica="'.$row->farmacologica.'" data-toggle="modal" data-target="#exampleModal">
                                    <i class="fa fa-plus"></i> Agregar
                            </td>
                        </tr>';
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
                <form id="formulario">
                    <div class="input-group mb-3">
                        <label for="precio" class="col-sm-3 col-form-label">Precio</label>
                        <input type="number" id="precio" name="precio" step="0.01" class="form-control is-valid" required>
                        <input type="number" id="descuento" name="descuento" min="0" max="100" value="0" class="form-control is-invalid" placeholder="Descuento" required>
                        <div class="input-group-append">
                            <span class="input-group-text">%</span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="cantidad" class="col-sm-3 col-form-label">Cantidad</label>
                        <div class="col-sm-9">
                            <input type="number" id="cantidad" name="cantidad" step="0.01"  value="1" class="form-control" required>
                            <span class="bg bg-danger text-white p-1" id="mensajecantidad" hidden>NO tienes esa cantidad de productos</span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="subtotal" class="col-sm-3 col-form-label"><b>SUBTOTAL</b></label>
                        <div class="col-sm-9">
                            <input type="number" id="subtotal" name="subtotal" step="0.01" value="0" class="form-control" required>
                        </div>
                    </div>
                    <div id="farmacologica" class="card-footer text-muted"></div>
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
        var stock;
        $('#exampleModal').on('show.bs.modal', function (event) {
            $('#mensajecantidad').attr('hidden','');
            var button = $(event.relatedTarget) // Button that triggered the modal
            var nombre = button.data('nombre');
            var precio = button.data('precio');
            stock = button.data('cantidad');
            idproducto = button.data('idproducto');
            if ($('#ca'+idproducto).length){
                // $('#exampleModal').modal('hide');
                alert('ya insertaste el producto!!, no puedes insertar mas productos, puedes aumentar la cantidad que ya exite');
                // return false;
                // event.preventDefault();
            }else{
                $('#precio').val(precio);
                $('#cantidad').val(1);
                $('#subtotal').val(precio*1);
                $('#farmacologica').html(button.data('farmacologica'));
                var modal = $(this);
                modal.find('.modal-title').text('Producto ' + nombre);
                producto=nombre;
            }

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
                        // console.log(e);
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
            $('#precio,#cantidad,#descuento').keyup(function (e) {
                var precio=$('#precio').val();
                var cantidad=$('#cantidad').val();
                var descuento=$('#descuento').val();
                $('#subtotal').val((precio*(1.00-descuento/100))*cantidad);
            });
            $('#ci').keyup(function (e) {
                var datos={
                    'ci':$('#ci').val()
                };
                $.ajax({
                    data:datos,
                    type: 'POST',
                    url: 'cliente',
                    success:function (e) {
                        // console.log(e);
                        var datos=JSON.parse(e);
                        let gastado=parseFloat(datos['total']);
                        $('#gastado').html(gastado.toFixed(2));
                        if (datos[0] !=null){
                            $('#razon').val(datos[0].apellidos);

                        }else{
                            $('#razon').val('');

                        }
                    }
                });
            });
            var total=0;
            var con=0;
        function calcular_total() {
            importe_total = 0;
            // console.log('a');
            $(".subtotal").each(
                function(index, value) {
                    importe_total = importe_total + eval($(this).val());
                }
            );
            $('#to').html(importe_total);
            $('#total').val(importe_total);
        }
        var callback = function() {
            // console.log();
            if ($(this).val()<=stock){
                $('#mensajecantidad').attr('hidden','');
            }else {
                $('#mensajecantidad').removeAttr('hidden');
            }
        };

        $("#cantidad").keyup(callback);
        $('#cantidad').change(callback);

            $('#formulario').submit(function (e) {
                    var precio=$('#precio').val();
                    var cantidad=$('#cantidad').val();
                    var subtotal=$('#subtotal').val();
                    //console.log(comprador);
                    con++;
                    // total=parseFloat(total)+ parseFloat(subtotal);
                    $( "#detalle" ).append( "<tr class=''>" +
                        "                <th scope='row'>"+con+"</th>" +
                        "                <td>"+producto+"</td>" +
                        "                <td>"+precio+"<input name='p"+idproducto+"' value='"+precio+"' hidden></td>" +
                        "                <td> <span id='ca"+idproducto+"'>"+cantidad+"</span> <button class='btn btn-success p-1 aumentar' data-precio='"+precio+"' data-idproducto="+idproducto+" ><i class='fa fa-plus'></i></button> <button class='btn btn-danger p-1 quitar' data-precio='"+precio+"' data-idproducto="+idproducto+"><i class='fa fa-minus'></i></button><input id='cad"+idproducto+"' name='c"+idproducto+"' value='"+cantidad+"' hidden></td>" +
                        "                <td align='right'><span id='su"+idproducto+"'>"+subtotal+"</span><input id='sub"+idproducto+"' class='subtotal' name='s"+idproducto+"' value='"+subtotal+"' hidden> "+' <button class="btn btn-danger p-1 eliproducto"><i class="fa fa-trash"></i></button>'+"</td>" +
                        "            </tr>" );

                // $('#to').html(total);
                // $('#total').val(total);
                calcular_total();
                $('#exampleModal').modal('hide');
                return false;
            });

        $("#detalle").on("click",".eliproducto", function(e){
            e.preventDefault();
            $(this).closest('tr').remove();
        });

        $("#detalle").on("click",".aumentar", function(e){
            let idproducto= parseInt( $(this).data('idproducto'));
            let precio= parseFloat( $(this).data('precio'));
            // console.log(precio)
            let cantidad= parseInt( $('#ca'+idproducto).html());
            cantidad=cantidad+1;
            $('#ca'+idproducto).html(cantidad);
            $('#cad'+idproducto).val(cantidad);
            $('#su'+idproducto).html(cantidad*precio);
            $('#sub'+idproducto).val(cantidad*precio);
            calcular_total();
            e.preventDefault();
        });
        $("#detalle").on("click",".quitar", function(e){

            let idproducto= parseInt( $(this).data('idproducto'));
            let precio= parseFloat( $(this).data('precio'));
            let cantidad= parseInt( $('#ca'+idproducto).html());
            if (cantidad>1){
            cantidad=cantidad-1;
            $('#ca'+idproducto).html(cantidad);
            $('#cad'+idproducto).val(cantidad);
                $('#su'+idproducto).html(cantidad*precio);
                $('#sub'+idproducto).val(cantidad*precio);
            }
            calcular_total();
            e.preventDefault();
        });
        $('#vender').submit(function () {
            // console.log($('#detalle').html()=='');
            if ($('#detalle').html()==""){
                alert('Porfavor seleccione productos a vender!');
                return false;
            }

        });
    }
</script>
