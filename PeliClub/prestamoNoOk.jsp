<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Bootstrap -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"  crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"  crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"  crossorigin="anonymous"></script>
    <title>Alta Préstamo</title>
  </head>
  <body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid" style="background-color: lightcoral">
            <div class="navbar-header">
                <a class="navbar-brand" href="inicio.jsp" style="color: black">P E L I C L U B</a>
            </div>
            <ul class="nav navbar-nav">
                  <li><a href="index.jsp" style="color: black">Login</a></li>
                  <li><a href="inicio.jsp" style="color: black">Inicio</a></li>
                  <li><a href="listaSocios.jsp" style="color: black">Socios</a></li>
                  <li><a href="listaPelis.jsp" style="color: black">Películas</a></li>
                  <li><a href="formSocio.jsp" style="color: black">Alta Socio</a></li>
                  <li><a href="formPeli.jsp" style="color: black">Alta Película</a></li>
                  <li><a href="formPrestamo.jsp" style="color: black">Alta Préstamo</a></li>
                  <li id="autor" style="color: black">Crud realizado por: Ángeles Bueno Aguilar</li>
            </ul>
        </div>
    </nav>
      <% 
      %>
      <% request.setCharacterEncoding("UTF-8"); %>
    <div id="container" style="padding: 5%">
        <br><br>
        <div class="panel panel-info noBorder">
            <div class="panel-heading text-center noBorder" style="background-image: linear-gradient(to bottom,#f08080 0,#f0d1ae 100%);">
                <h2 style="color: firebrick;">No se puede realizar el préstamo, la película ya está en poder de otro socio</h2>
                <a href="inicio.jsp" class="btn btn-default">Ver listado de préstamos</a>
            </div>
        </div>
    </div>
  </body>
</html>
