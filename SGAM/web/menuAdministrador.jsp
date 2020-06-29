<%-- 
    Document   : menuUsuario
    Created on : 16-jun-2020, 16:01:03
    Author     : Andres Alvarez
--%>
<%@include file="seguridad.jsp" %>
<%@include file="seguridadAdministrador.jsp" %>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Administrador</title>
                <link rel="icon" href="Img/logoCaterpillar.png" >

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

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Registrar
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="registrarRoles.jsp">Roles</a>
                            <a class="dropdown-item" href="asignarPermisos.jsp">Permisos</a>
                            <a class="dropdown-item" href="registrarBeneficio.jsp">Beneficio</a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Consultar
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="consultarUsuario.jsp">Usuarios</a>
                            <a class="dropdown-item" href="consultarRoles.jsp">Roles</a>
                            <a class="dropdown-item" href="consultarPermisos.jsp">Permisos</a>
                            <a class="dropdown-item" href="consultarBeneficio.jsp">Beneficio</a>
                        </div>
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
