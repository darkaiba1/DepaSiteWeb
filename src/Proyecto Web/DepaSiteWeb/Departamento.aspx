<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Departamento.aspx.cs" Inherits="DepaSiteWeb.Departamento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/esm/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

    <title>Busca Departamento</title>
</head>
<body>
    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="#"><img src="img/casa.jpg" /> Depasite </a>

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

    <form id="form1" runat="server">
    <div>
    <input type="text" id="calle" placeholder="Busca por calle" runat="server"/>
    <button id="obtener" runat="server" onserverclick="obtener_ServerClick"> Buscar </button>
    </div>
    </form>
</body>
</html>
