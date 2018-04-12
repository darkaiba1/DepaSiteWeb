<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerMas.aspx.cs" Inherits="DepaSiteWeb.VerMas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Registro.css" rel="stylesheet" />
    <title></title>
    <script src="Scripts/jquery-3.0.0.js"></script>
    <script src="VerMas.js"></script>
</head>
<body>
    <div id="id01" class="modal">
  <span onclick="document.getElementById('id03').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" action="/action_page.php">
    <div class="container">
      <h1 style="text-align:center">Tu departamento</h1>
      <hr>
        <div class="row">
      <div class="col-sm-6 col-md-6 bg-success">
      <label for="direccion"><b>¿ Donde esta ubicado ?</b></label>
      <label for="direccion" id="direccion">***********</label>
      <br /><br />
         <label for=""><b>¿ En que municipio ?</b></label>
      <label for="" id="municipio">***********</label>
        <br /><br />
         <label for=""><b>¿ En que estado se ubica ?</b></label>
      <label for="" id="estado">***********</label>
        <br /><br />
         <label for=""><b>Nombre de la persona encargada</b></label>
      <label for="" id="nombreContacto">***********</label>
<br /><br />
         <label for=""><b>¿ Cuanto cuesta la mensualidad ?</b></label>
      <label for="" id="costo">***********</label>
<br /><br />
         <label for=""><b>¿ Que servicios se incluyen ?</b></label>
      <label for="" id="serviciosIncluidos" >***********</label>
      <br /><br />
         <label for=""><b>¿ Que servicios debes pagar para incluirlos ?</b></label>
      <label for="" id="servPago">***********</label>
        <br /><br />
         <label for="direccion"><b>¿ Esta amueblado ?</b></label>
      <label for="" id="amueblado">***********</label>
        <br /><br />
         <label for="direccion"><b>Numero de contacto</b></label>
      <label for="" id="numContacto">***********</label>
        <br /><br />
     
           </div>
            <div class="col-sm-6 col-md-6 bg-warning">
            <img width="500px" id="imgDepa"/>
                 </div>
             <div class="clearfix">
        <button type="button" onclick="window.close();" class="cancelbtn">Cerrar</button>
      </div>
    </div>
    </div>
  </form>
</div>
</body>
</html>
