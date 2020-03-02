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
    th { font-size: 12px;border: 0px;padding: 0px;margin: 0px }
    td { font-size: 11px;border: 0px;padding: 0px;margin: 0px }
</style>
<!-- Button trigger modal -->
<button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">
    <i class="fa fa-plus"></i> Registrar Producto
</button>
<div class="mt-1"></div>
<div class="table-responsive">
    <table id="example" class="display nowrap" style="width:100%;padding: 0px;margin: 0px;border: 0px">
        <thead>
            <tr>
                <th scope="col">Distribuidora</th>
                <th scope="col">Nom. Géner.</th>
                <th scope="col">Nom. Comer.</th>
                <th scope="col">Form. Farma.</th>
                <th scope="col">Precio</th>
<!--                <th scope="col">Cantidad</th>-->
                <th scope="col">Farmacológica</th>
                <th scope="col">Estado</th>
                <th scope="col">Opciones</th>
            </tr>
        </thead>
        <tbody>
        <?php
        $query=$this->db->query("SELECT * FROM producto");
        foreach ($query->result() as $row){
            if($row->estado=="ACTIVO"){
                $t="<div class='alert alert-success'>ACTIVO</div>";
                $b="<a href='".base_url()."Productos/delete/$row->idproducto' class='btn btn-sm btn-danger eli  p-1' ><i class='fa fa-trash-o'></i> Inactivar</a>";
            }else{
                $t="<div class='alert alert-danger'>INACTIVO</div>";
                $b="<a href='".base_url()."Productos/delete/$row->idproducto' class='btn btn-sm btn-success  p-1' ><i class='fa fa-check'></i> Activar</a>";
            }
            echo "
            <tr>
                <td>".$row->distribuidora."</td>
                <td>".$row->nombre."</td>
                <td>".$row->nombrecomercial."</td>
                <td>".$row->formafarmaceutica."</td>
                <td>".$row->precio."</td>
                <!--td>".$row->cantidad."
                    <div class='progress'>
                    <div class='progress-bar' role='progressbar' style='width: $row->cantidad%;' aria-valuenow='$row->cantidad' aria-valuemin='0' aria-valuemax='100'>$row->cantidad</div>
                </div>
                </td--->
                <td>".$row->farmacologica."</td>
                <td>$t</td>
                <td> 
                    <button class='btn btn-sm btn-warning text-white p-1' data-idusuario='$row->idproducto' data-toggle='modal' data-target='#modificar'><i class='fa fa-pencil'></i> Actualizar</button> <br>
                    <button class='btn btn-sm btn-info text-white p-1' data-idusuario='$row->idproducto' data-toggle='modal' data-target='#lote'><i class='fa fa-product-hunt'></i> Agre. Lote</button> <br>
                    $b
                </td>
            </tr>";
        }
        ?>
        </tbody>
    </table>
</div>
<script>
    var eli=document.getElementsByClassName("eli");
    for (var i=0;i<eli.length;i++){
        eli[i].addEventListener('click', function (e) {
            if (!confirm("Seguro de inactivar?, no estará disponible para realizar ventas")){
                e.preventDefault();
            }
        })
    }
    window.onload=function (e) {
        e.preventDefault();
        $('#lote').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget) // Button that triggered the modal
            var idproducto = button.data('idusuario') // Extract info from data-* attributes
            $('#idproductolote2').val(idproducto);
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
                        <div class="form-group col-md-12">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Nombre Generico</span>
                                </div>
                                <input type="text" class="form-control" id="nombre" placeholder="nombre" name="nombre">
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Nombre Comercial</span>
                                </div>
                                <input type="text" class="form-control" id="nombrecomercial" placeholder="nombre comercial" name="nombrecomercial" required>
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Forma Farmaceutica</span>
                                </div>
                                <input type="text" class="form-control" id="formafarmaceutica" placeholder="forma farmaceutica" name="formafarmaceutica" required>
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Precio</span>
                                </div>
                                <input type="number" class="form-control" id="precio" min="0.10" placeholder="precio" name="precio" step="0.10" required>
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Stock</span>
                                </div>
                                <input type="text" class="form-control" id="stock" value="0" placeholder="stock" name="stock" required>
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Farmacológica</span>
                                </div>
                                <textarea name="farmacologica" class="form-control" id="farmacologica" rows="2"></textarea>
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Fecha Vencimiento</span>
                                </div>
                                <input type="date"  class="form-control" id="fechavencimiento" placeholder="fecha vencimiento" name="fechavencimiento" required>
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Distribuidora</span>
                                </div>
                                <input type="text" placeholder="Distribuidora" name="distribuidora" class="form-control" list="productName"/>
                            </div>
                            <datalist id="productName">
                                <?php
                                $query=$this->db->query("SELECT distribuidora FROM producto GROUP BY distribuidora");
                                foreach ($query->result() as $row){
                                    echo "<option value='$row->distribuidora'>$row->distribuidora</option>";
                                }
                                ?>
                            </datalist>
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
                        <div class="form-group col-md-12">
                            <input type="text" id="idproducto2" name="idproducto" hidden>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Nombre Genérico</span>
                                </div>
                                <input type="text" class="form-control" id="nombre2" placeholder="nombre" name="nombre">
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Nombre Comercial</span>
                                </div>
                                <input type="text" class="form-control" id="nombrecomercial2" placeholder="nombre comercial" name="nombrecomercial" required>
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Forma Farmaceútica</span>
                                </div>
                                <input type="text" class="form-control" id="formafarmaceutica2" placeholder="forma farmaceutica" name="formafarmaceutica" required>
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Precio</span>
                                </div>
                                <input type="number" step="0.10" class="form-control" id="precio2" value="0" placeholder="precio" name="precio" required>
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Stock</span>
                                </div>
                                <input type="text" class="form-control" id="stock2" value="0" placeholder="stock" name="stock" required>
                            </div>
                        </div>
                        <div class="form-group col-md-12"  >
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Farmacológica</span>
                                </div>
                                <input type="text"  class="form-control" id="farmacologica2" placeholder="farmacologica" name="farmacologica" required>
                            </div>
                        </div>
                        <div class="form-group col-md-12"  >
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Fecha Vencimiento</span>
                                </div>
                                <input type="date"  class="form-control" id="fechavencimiento2" placeholder="fecha vencimiento" name="fechavencimiento" required>
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Distribuidora</span>
                                </div>
                                <input type="text" placeholder="Distribuidora" id="distribuidora2" name="distribuidora" class="form-control" list="productName"/>
                            </div>
                            <datalist id="productName">
                                <?php
                                $query=$this->db->query("SELECT distribuidora FROM producto GROUP BY distribuidora");
                                foreach ($query->result() as $row){
                                    echo "<option value='$row->distribuidora'>$row->distribuidora</option>";
                                }
                                ?>
                            </datalist>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                        <button type="submit" class="btn btn-warning">Actualizar</button>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="lote" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Nuevo LOTE</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" action="<?=base_url()?>Productos/lote" style="padding: 0px;margin: 0px;border: 0px">
                    <div class="form-row" style="padding: 0px;margin: 0px;border: 0px">
                        <div class="form-group col-md-12"  >
                            <label for="stock2" >Stock</label>
                            <input type="text" id="idproductolote2" name="idproducto" hidden >
                            <input type="text" class="form-control" id="stock2"  placeholder="000" name="stock" required>
                        </div>
                        <div class="form-group col-md-12"  >
                            <label for="fechavencimiento2" >Fecha Vencimiento</label>
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
