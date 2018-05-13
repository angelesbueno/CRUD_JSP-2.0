<%@page import="java.util.HashMap"%>
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
      <%
          HashMap<String, String> login = new HashMap();
          login.put("admin", "admin");
          login.put("usuario", "usuario");
          login.put("user", "user");
          login.put("angeles", "angeles");
          login.put("angy", "angy");
          String nombre = request.getParameter("user");
          String contraseña = request.getParameter("password");
          if (login.containsKey(nombre)) {
            if (login.get(nombre).equals(contraseña)) {
              session.setAttribute("nombre", nombre);
              response.sendRedirect("inicio.jsp");
            } else {
              response.sendRedirect("loginNoOk.jsp");
            }
          } else {
            response.sendRedirect("loginNoOk.jsp");
          }
        %>
  </body>
