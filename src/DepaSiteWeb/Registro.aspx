<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="DepaSiteWeb.Registro" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Registro de usuario</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="Registro.css" rel="stylesheet" />
    </head>
<body>
    <div class="container1">
     <img src="img/portadaL.jpg"  alt="Depasite"/>
    <button onclick="document.getElementById('id01').style.display='block'" style="width: auto; position: absolute; top: 50%; left: 50%;">
        Registrate
    </button>
<div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" action="/action_page.php">
    <div class="container">
      <h1>Registrate</h1>
      <p>Porfavor llena el siguiente formulario para registrarse.</p>
      <hr>
      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Ingresa tu Email" name="email" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Ingresa tu Password" name="psw" required>

      <label for="psw-repeat"><b>Nombre de usuario</b></label>
      <input type="text" placeholder="Ingresa un nombre de usuario" name="usuario" required>
      
      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancelar</button>
        <button type="submit" class="signupbtn">Registrar</button>
      </div>
    </div>
  </form>
</div>
</div>
<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

</body>
</html>
