﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DepaSiteWeb.Login" %>

<!DOCTYPE html>
<html>
<head>
    <title> Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="Login.css" rel="stylesheet" />
</head>
<body>
   <div class="container1">
     <img src="img/portadaL.jpg"  alt="Depasite"/>
<button onclick="document.getElementById('id02').style.display='block'" style="width:auto; position: absolute; top: 50%; left: 50%;">
    Login</button>

<div id="id02" class="modal">
  
  <form class="modal-content animate" action="/action_page.php">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="img/login.jpg" alt="Avatar" class="avatar">
    </div>
       
    <div class="container">
      <label for="uname"><b>Usuario</b></label>
      <input type="text" placeholder="Escribir Usuario" name="uname" required>

      <label for="psw"><b>Contraseña</b></label>
      <input type="password" placeholder="Escribir contraseña" name="psw" required>
        
      <button type="submit">Login</button>
      <label>
        <input type="checkbox" checked="checked" name="recordar"> Recordar
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancelar</button>
      <span class="psw">Olvidaste tu <a href="#">contraseña?</a></span>
    </div>
  </form>
</div>
       </div>

<script>
// Get the modal
var modal = document.getElementById('id02');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

</body>
</html>
