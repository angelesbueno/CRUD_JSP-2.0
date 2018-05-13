<%@page import="java.util.ArrayList"%>
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
    <title>Formulario Modificar Películas</title>
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
        <h2 style="margin-bottom: 20px;">Introduzca los nuevos datos de la película:</h2>
        <form method="post" action="grabaPeliModificada.jsp">
            <div class="form-group">
                <label for="titulo">Título:</label>
                <input type="text" name="titulo" autocomplete="off" class="form-control" id="titulo" required/><br/>
            </div>
            <div class="form-group">
                <label for="genero">Género:</label>
                <%
                    ArrayList<String> genero = new ArrayList();
                    genero.add("Drama");
                    genero.add("Musical");
                    genero.add("Acción");
                    genero.add("Animación");
                    genero.add("Terror");
                    genero.add("Fantasía");
                    genero.add("Ciencia Ficción");
                %>
                <select class="form-control" name="genero"/>
                    <option></option>
                        <%
                          for (String i : genero) {
                            out.println("<option>" + i + "</option>");
                          }
                        %>  
                </select>
            </div>
            <div class="form-group">
                <label for="descripcion">Descripción:</label>
                <input type="text" name="descripcion" autocomplete="off" class="form-control" id="descripcion" required/><br/>
            </div>
            <div class="form-group">
                <label for="propietario">Propietario:</label>
<!--                <input type="number" name="propietario" autocomplete="off" class="form-control" id="propietario" required/><br/>-->
                <select class="form-control" name="codSoc">
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:8889/CLUBPELIS?zeroDateTimeBehavior=convertToNull", "root", "root");
                        Statement s = conexion.createStatement();

                        ResultSet listaPropietario = s.executeQuery("Select CodSoc, NomSoc FROM socio");
                        while (listaPropietario.next()) {
                            String codSoc = listaPropietario.getString("CodSoc");
                            String nomSoc = listaPropietario.getString("NomSoc");
                            //out.println("<option value='" + hotelID + "'> " + nombreHotel + ", " + ciudadHotel + ", " + numeroEstrellas + "</option>");
                            out.println("<option value='" + codSoc + "'> " + nomSoc + "</option>");
                        }
                    %>
                </select>
            </div>
            <button type="submit" class="btn btn-info btn-sm">Enviar</button>
            <input type="hidden" name="codigo" value="<%=request.getParameter("codigo")%>"/>
        </form>
    </div>
  </body>
</html>