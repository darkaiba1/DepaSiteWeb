function agregarUsuario() {
    //Build an object which matches the structure of our view model class
    var email = document.getElementById("email").value;
    var username = document.getElementById("username").value;
    var password = document.getElementById("pass").value;
    var select = document.getElementById("rol");
    var rol = select.options[select.selectedIndex].value;
    var nombre = document.getElementById("nombre").value;
    var apeidos = document.getElementById("apeidos").value;

    
    var model = {
        email: email,
        username: username,
        password: password,
        rol: rol,
        nombre: nombre,
        apeidos: apeidos,
    };
    console.log(model);
    $.ajax({
        type: "POST",
        data: JSON.stringify(model),
        url: "http://localhost:51407/api/Usuario",
        contentType: "application/json"
    })// .done(function (res) {
       // console.log('agregado' );
        //   alert("Usuario Agregado");
         
        // Do something with the result :)
    //})
     .fail(function () {
         alert("error ");

     })
   .always(function () {
       alert("Usuario Agregado");
   });

}