<%-- 
    Document   : menuVendedor
    Created on : 20-jun-2020, 12:25:44
    Author     : Juan Pablo
--%>

<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vendedor</title>
    </head>
    <body>
        <%HttpSession obj = request.getSession();%>
        <%out.println(obj.getAttribute("nombre"));%>
        <header>
            <li><a class="icon-user-plus" href="registrarProducto.jsp">Registrar producto<span class="icon-down-open"></span></a>
             
            </li>
            <li><a class="icon-user-plus" href="consultarProductos.jsp">Consultar producto<span class="icon-down-open"></span></a>
                
            </li>

            <%@include file="permisos.jsp"%>

            <a href="salir.jsp">Salir</a>
        </header>
    </body>
</html>
