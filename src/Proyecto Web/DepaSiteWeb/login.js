function login() {
    //Build an object which matches the structure of our view model class
    var username = document.getElementById("username").value;
    var password = document.getElementById("pass").value;
    model={
        username:username,
        password:password
    }
    $.ajax({
        type: "POST",
        data: JSON.stringify(model),
        url: "http://localhost:51407/api/Login",
        contentType: "application/json"
    }).done(function (res) {
        console.log('se encuentra?', res);
        if (res) {
            alert("Usuario Loggead");
        }
        else {
            alert("Error Identifica tu usuario y contraseña")
        }
        // Do something with the result :)
    })
    .fail(function () {
        alert("error");
        
    })
   .always(function () {
       alert("complete");
   });
}