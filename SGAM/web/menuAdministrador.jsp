<%-- 
    Document   : menuUsuario
    Created on : 16-jun-2020, 16:01:03
    Author     : Andres Alvarez
--%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
    </head>
    <body>
        <%HttpSession obj = request.getSession();%>
        <%out.println(obj.getAttribute("nombre"));%>
        <header>
            <li><a class="icon-user-plus" href="#">Consultar<span class="icon-down-open"></span></a>
                        <ul>
                            <li><a class="icon-user-plus" href="consultarUsuario.jsp">Usuarios</a></li>
                            
                        </ul>
                    </li>
                    
                    <%@include file="permisos.jsp"%>
            
        </header>
    </body>
</html>
