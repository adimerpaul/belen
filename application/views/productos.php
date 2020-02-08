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
<button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">
    <i class="fa fa-plus"></i> Registrar Producto
</button>
<div class="mt-1"></div>
<table id="example" class="display nowrap" style="width:100%">
    <thead>
    <tr>
        <th scope="col">Idproducto</th>
        <th scope="col">Nombre</th>
        <th scope="col">Precio</th>
        <th scope="col">Cantidad</th>
        <th scope="col">Accion farmacologica</th>
        <th scope="col">Fecha de vencimiento</th>
        <th scope="col">Estado</th>
        <th scope="col">Opciones</th>
    </tr>
    </thead>
    <tbody>
    <?php
    $query=$this->db->query("SELECT * FROM producto
");
    foreach ($query->result() as $row){
        if($row->estado=="ACTIVO"){
            $t="<div class='p-0 text-center bg-success text-white'>ACTIVO</div>";
            $b="<a href='".base_url()."Productos/delete/$row->idproducto' class='btn btn-sm btn-danger eli  p-1' ><i class='fa fa-trash-o'></i> INACTIVAR</a>";
        }else{
            $t="<div class='p-0 text-center bg-warning text-white'>INACTIVO</div>";
            $b="<a href='".base_url()."Productos/delete/$row->idproducto' class='btn btn-sm btn-success  p-1' ><i class='fa fa-check'></i> ACTIVAR</a>";
        }
        echo "
        <tr>
            <td>".$row->idproducto."</td>
            <td>".$row->nombre."</td>
            <td>".$row->precio."</td>
            <td>".$row->cantidad."
            <div class='progress'>
              <div class='progress-bar' role='progressbar' style='width: $row->cantidad%;' aria-valuenow='$row->cantidad' aria-valuemin='0' aria-valuemax='100'>$row->cantidad</div>
            </div>
            </td>
            <td>".$row->farmacologica."</td>
            <td>".$row->fechavencimiento."</td>
            <td>$t</td>
            <td> 
            <button  class='btn btn-sm btn-warning text-white p-1' data-idusuario='$row->idproducto' data-toggle=\"modal\" data-target=\"#modificar\" ><i class='fa fa-pencil'></i> Actualizar</button>
           $b
            </td>
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

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog ">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Registrar</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" action="<?=base_url()?>Productos/insert" style="padding: 0px;margin: 0px;border: 0px">
                    <div class="form-row" style="padding: 0px;margin: 0px;border: 0px">
                        <div class="form-group col-md-12"  >
                            <label for="nombre" >nombre</label>
                            <input type="text"  class="form-control" id="nombre" placeholder="nombre" name="nombre" required>
                        </div>
                        <div class="form-group col-md-12"  >
                            <label for="precio" >precio</label>
                            <input type="text"  class="form-control" id="precio" value="0" placeholder="precio" name="precio" required>
                        </div>
                        <div class="form-group col-md-12"  >
                            <label for="stock" >stock</label>
                            <input type="text"  class="form-control" id="stock" value="0" placeholder="stock" name="stock" required>
                        </div>
                        <div class="form-group col-md-12"  >
                            <label for="farmacologica" >farmacologica</label>
                            <input type="text"  class="form-control" id="farmacologica" placeholder="farmacologica" name="farmacologica" required>
                        </div>
                        <div class="form-group col-md-12"  >
                            <label for="fechavencimiento" >fecha vencimiento</label>
                            <input type="date"  class="form-control" id="fechavencimiento" placeholder="fecha vencimiento" name="fechavencimiento" required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                        <button type="submit" class="btn btn-success">Guardar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>




<div class="modal fade" id="modificar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modificar</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" action="<?=base_url()?>Productos/update" style="padding: 0px;margin: 0px;border: 0px">
                    <div class="form-row" style="padding: 0px;margin: 0px;border: 0px">
                        <div class="form-group col-md-12" style="padding: 0px;margin: 0px;border: 0px" >

                            <label for="nombre2" >Nombre</label>
                            <input type="text" id="idproducto2" name="idproducto">
                            <input type="text" class="form-control" id="nombre2" placeholder="nombre" name="nombre" required>
                        </div>
                        <div class="form-group col-md-12"  >
                            <label for="precio2" >Precio</label>
                            <input type="text" class="form-control" id="precio2" value="0" placeholder="precio" name="precio" required>
                        </div>
                        <div class="form-group col-md-12"  >
                            <label for="stock2" >Stock</label>
                            <input type="text" class="form-control" id="stock2" value="0" placeholder="stock" name="stock" required>
                        </div>
                        <div class="form-group col-md-12"  >
                            <label for="farmacologica2" >farmacologica</label>
                            <input type="text"  class="form-control" id="farmacologica2" placeholder="farmacologica" name="farmacologica" required>
                        </div>
                        <div class="form-group col-md-12"  >
                            <label for="fechavencimiento2" >fecha vencimiento</label>
                            <input type="date"  class="form-control" id="fechavencimiento2" placeholder="fecha vencimiento" name="fechavencimiento" required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                        <button type="submit" class="btn btn-warning">Modificar</button>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>
