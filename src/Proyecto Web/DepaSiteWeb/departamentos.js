var datatable;
window.onload = init;
function init() {
    var boton = document.getElementById('departamentos');
    boton.onclick = obtenerTodos();
}

$(function () {
    console.log('Documento totalmente cargado');


    datatable = $('#departamentos').dataTable({
        columns: [
            { title: "Id", data: "Id" },
            { title: "Direccion", data: "direccion" },
            { title: "Municipio", data: "municipio" },
            { title: "Estado", data: "estado" },
            { title: "Nombre Contacto", data: "nombreContacto" },
            { title: "Costo", data: "costo" },
            { title: "Servicios incluidos", data: "ServiciosIncluidos" },
            { title: "Servicios pago", data: "ServiciosPago" },
            { title: "Amueblado", data: "Amueblado" },
            { title: "Numero contacto", data: "numeroContacto" },
            {
                title: "Ver mas", data: null,
                render: function (data, type, row) {
                    return '<button type="button" class="dtr-data btn btn-default" onclick="verDetalle(\'' + data.Id
                     + '\')"> Ver mas </button>';
                }
                
            }
        ]
    });
});
function verDetalle(id) {
  //  alert(id);
    
    $("").load("../VerMas.aspx", { idDepartamento: id });
    var y = parseInt((window.screen.height / 2) - (altura / 2));
    var x = parseInt((window.screen.width / 2) - (anchura / 2));
    var altura = 300;
    var anchura = 300;
    window.open('VerMas.aspx?'+id);

}


function obtenerTodos() {
    $.ajax({
        type: "GET",
        url: "http://localhost:51407/api/Departamento",
        contentType: "application/json; charset=utf-8",
        dataType: "json"
    })
    .done(function (data) {
        //alert("success");
        console.log(data);

        datatable.fnClearTable();
        datatable.fnAddData(data);
    })
    .fail(function () {
        alert("error");
        console.log("Ocurrió un fallo, imposible recuperar los datos.")
    })
    .always(function () {
        //alert("complete");
    });
};
