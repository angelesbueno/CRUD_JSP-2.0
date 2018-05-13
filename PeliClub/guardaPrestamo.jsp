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
        Class.forName("com.mysql.jdbc.Driver");
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:8889/CLUBPELIS?zeroDateTimeBehavior=convertToNull", "root", "root");
        Statement s = conexion.createStatement();

        request.setCharacterEncoding("UTF-8");
//        // Comprueba que la película no esté ya prestada
//        String consultaCodPel = "SELECT * FROM prestamo WHERE CodPel = '" + request.getParameter("codPel") + "'";     
//
//        ResultSet codigoDePeli = s.executeQuery(consultaCodPel);
//        codigoDePeli.last();
//
//        if (codigoDePeli.getRow() > 1) {
//          response.sendRedirect("prestamoNoOk.jsp");
//
//        } else {
          String insercion = "INSERT INTO Prestamo (CodSoc, CodPEL) VALUES ("
                       + Integer.valueOf(request.getParameter("codSoc"))
                       + ", " + Integer.valueOf(request.getParameter("codPel")) + ")";
        s.execute(insercion);
        response.sendRedirect("prestamoOk.jsp");
       // }
        conexion.close();      
    %>
  </body>
</html>