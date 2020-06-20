<%-- 
    Document   : menuUsuario
    Created on : 20-jun-2020, 12:26:32
    Author     : Juan Pablo
--%>

<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuario</title>
    </head>
    <body>
        <%HttpSession obj = request.getSession();%>
        <%out.println(obj.getAttribute("nombre"));%>
        <header>
            <li><a class="icon-user-plus" href="actualizarDatos.jsp">Actualizar datos personales<span class="icon-down-open"></span></a>
               
            </li>
            <li><a class="icon-user-plus" href="#">Cambiar contraseña<span class="icon-down-open"></span></a>

            </li>

            <%@include file="permisos.jsp"%>

            <a href="salir.jsp">Salir</a>
        </header>
    </body>
</html>
