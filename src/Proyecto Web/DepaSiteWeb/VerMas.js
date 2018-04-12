window.onload = init;
function init() {
    getGET();
}
function getGET() {
    // capturamos la url
    var loc = document.location.href;
    // si existe el interrogante
    if (loc.indexOf('?') > 0) {
        // cogemos la parte de la url que hay despues del interrogante
        var getString = loc.split('?')[1];
        obtenerDepa(getString);
        obtenerImg(getString);
    }
}
function obtenerDepa(id) {
    console.log('Mensaje a consultar ' + id);

    $.ajax({
        type: "GET",
        url: "http://localhost:51407/api/Departamento/" + id,
        contentType: "application/json; charset=utf-8",
        dataType: "json"
    })
    .done(function (data) {
     //   alert("success");
        console.log(data);

        document.querySelector('#direccion').innerText = data.direccion;
        document.querySelector('#municipio').innerText = data.municipio;
        document.querySelector('#estado').innerText = data.estado;
        document.querySelector('#nombreContacto').innerText = data.nombreContacto;
        document.querySelector('#costo').innerText = data.costo;
        document.querySelector('#serviciosIncluidos').innerText = data.ServiciosIncluidos;
        document.querySelector('#servPago').innerText = data.ServiciosPago;
        document.querySelector('#amueblado').innerText = data.Amueblado;
        document.querySelector('#numContacto').innerText = data.numeroContacto;
    })
    .fail(function () {
        alert("error");
    })
    .always(function () {
       // alert("complete");
    });
}

function obtenerImg(id) {
    console.log('Mensaje a consultar ' + id);

    $.ajax({
        type: "GET",
        url: "http://localhost:51407/api/Imagen/" + id,
        contentType: "application/json; charset=utf-8",
        dataType: "json"
    })
    .done(function (data) {
        //   alert("success");
        console.log(data);
       // alert('img/imgDepas/' + data.imagen);
        document.getElementById("imgDepa").src = 'img/imgDepas/' + data.imagen;
       // document.querySelector('#municipio').innerText = data.municipio;
      
    })
    .fail(function () {
        alert("error");
    })
    .always(function () {
        // alert("complete");
    });
}