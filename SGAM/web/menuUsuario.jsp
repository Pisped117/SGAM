<%-- 
    Document   : menuUsuario
    Created on : 20-jun-2020, 12:26:32
    Author     : Juan Pablo
--%>


<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="seguridad.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Usuario</title>
    </head>
    <body>      

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            

            <a class="navbar-brand">SGAM</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link"><%out.println(session.getAttribute("nombre"));%><span class="sr-only">(current)</span></a>
                    </li>
                     <li class="nav-item">
                        <a class="nav-link" href="actualizarDatos.jsp">Actualizar datos personales</a>
                    </li>
                     <li class="nav-item">
                        <a class="nav-link" href="actualizarContrasenia.jsp">Cambiar contraseña</a>
                    </li>               
                    <li class="nav-item dropdown">
                        <%@include file="permisos.jsp"%>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="salir.jsp">Salir</a>
                    </li>
                </ul>
            </div>
        </nav>


        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>
