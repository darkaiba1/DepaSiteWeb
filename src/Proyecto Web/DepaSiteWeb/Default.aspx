﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DepaSiteWeb.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>DepaSite: Uriangato</title>
     <link href="Default.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/esm/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

</head>
<body>
    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="#"><img src="img/casa.jpg" /> DepaSite </a>

  <!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>

  <!-- Navbar links -->
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav ml-auto" >
      <li class="nav-item">
        <a class="nav-link" href="#">Inicio</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Departamento.aspx">Departamentos</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="Registro.aspx"><span class="glyphicon glyphicon-log-in"></span>Registrar</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Login.aspx"><span class="glyphicon glyphicon-log-in"></span>Login</a>
      </li> 
          
    </ul>
  </div> 
</nav>
    <div class="container">
    <div class="centered">
      <input type="search" placeholder="Intenta <<Uriangato>>"/>
      <br />
      <button type="button"  onclick="window.open('Departamento.aspx')" class="btn btn-primary" >Localizar</button>
    </div>
     <img src="img/portada2.png"  alt="Depasite"/>
    </div>
    
 <article>
  <div class="row">
  <div class="col-sm-4" style="background-color:lightgray;"><h1>SOMOS</h1>  <h2>Un sitio Web</h2>   <p>Para la ayuda de estudiantes foraneos<br /> en busqueda de departamentos</p>   </div>
  <div class="col-sm-4"> 
  <img src="img/tema3.PNG"  alt="imagen 3" class="tema"/>
  </div>
  <div class="col-sm-4"style="background-color:lightgray;"><h1>Ya sabes donde vivir!!</h1>  <h2>Nosotros te ayudamos!!</h2>   <p>Las mejores opciones de departamentos<br /> en renta aqui las encontraras</p>   </div>
</div>
    </article>
    <article>
  <div class="row">
  <div class="col-sm-4 "><img src="img/tema1.png" alt="imagen 1" class="tema"/></div>
  <div class="col-sm-4"style="background-color:lightgray;"><h1>¡VAMOS!</h1>  <h2>Registrate</h2><p>Quedaras satisfecho, somos tu mejor<br /> opcion, no te arrepentiras</p>  <p></p> </div>
  <div class="col-sm-4"><img src="img/tema2.png"  alt="imagen 2"class="tema"/></div>
</div>
    </article>
    <div class="footer">
  <p>Footer</p>
</div>


</body>
</html>
