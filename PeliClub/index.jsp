<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
        <div class="container" style="padding: 5%;">
    <br><br>			
    <div class="panel panel-info" id="formLogin">
        <div class="panel-heading text-center" id="headerFormLogin" style="background-image: linear-gradient(to bottom,#f08080 0,#f0d1ae 100%);">
            <h2 style="color: firebrick;">L O G I N</h2>
        </div>
        <form method="post" action="envioLogin.jsp" id="cajaFormulario">
            <div class="form-group">
                <label for="titulo">Usuario:</label>
                <input type="text" name="user" autocomplete="off" class="form-control" required/><br/>
            </div>
            <div class="form-group">
                <label for="pwd">Contraseña:</label>
                <input type="password" name="password" autocomplete="off" class="form-control" required/><br/>
            </div>
            <span id="enviarLogin">
                <button type="submit"  class="btn btn-info btn-lg">Enviar</button>
            </span>
        </form>
