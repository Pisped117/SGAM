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
            <li><a class="icon-user-plus" href="#">Consultar<span class="icon-down-open"></span></a>
                <ul>
                    <li><a class="icon-user-plus" href="consultarUsuario.jsp">Usuarios</a></li>
                    <li><a class="icon-user-plus" href="consultarRoles.jsp">Roles</a></li>
                    <li><a class="icon-user-plus" href="consultarPermisos.jsp">Permisos</a></li>
                    <li><a class="icon-user-plus" href="consultarBeneficio.jsp">Beneficio  </a></li>
                    
                </ul>
            </li>
            <li><a class="icon-user-plus" href="#">Registrar<span class="icon-down-open"></span></a>
                <ul>
                    <li><a class="icon-user-plus" href="registrarRoles.jsp">Roles</a></li>
                    <li><a class="icon-user-plus" href="asignarPermisos.jsp">Permisos</a></li>
                    <li><a class="icon-user-plus" href="registrarBeneficio.jsp">Beneficio  </a></li>
                    
                </ul>
            </li>

            <%@include file="permisos.jsp"%>

            <a href="salir.jsp">Salir</a>
        </header>
    </body>
</html>
