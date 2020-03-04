$(document).ready(function() {
    $('#example').DataTable({
        dom: 'Bfrtip',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    });

    $('#modificar').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget) // Button that triggered the modal
        var idusuario = button.data('idusuario') // Extract info from data-* attributes
        // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
        // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
        //console.log(idusuario);
        var datos={
            'idproducto':idusuario
        }
        $.ajax({
            url:'Productos/datos',
            type:'POST',
            data:datos,
            success:function (e) {
                var datos=JSON.parse(e)[0];
                console.log(datos);
                $('#idproducto2').val(datos.idproducto);
                $('#nombre2').val(datos.nombre);
                $('#precio2').val(datos.precio);
                $('#nombrecomercial2').val(datos.nombrecomercial);
                $('#formafarmaceutica2').val(datos.formafarmaceutica);
                $('#stock2').val(datos.cantidad);
                $('#farmacologica2').val(datos.farmacologica);
                $('#fechavencimiento2').val(datos.fechavencimiento);
                $('#distribuidora2').val(datos.distribuidora);
            }
        })
    })
});
