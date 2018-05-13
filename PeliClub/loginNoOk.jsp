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
    <title>Login</title>
  </head>
  <body>
      <% 
      %>
      <% request.setCharacterEncoding("UTF-8"); %>
    <div id="container" style="padding: 5%">
        <br><br>
        <div class="panel panel-info noBorder">
            <div class="panel-heading text-center noBorder" style="background-image: linear-gradient(to bottom,#f08080 0,#f0d1ae 100%);">
                <h2 style="color: firebrick;">Usuario o contraseña incorrecta</h2>
                <a href="index.jsp" class="btn btn-default">Volver al login</a>
            </div>
        </div>
    </div>
  </body>
</html>

