<%-- 
    Document   : salir
    Created on : 18-jun-2020, 14:45:18
    Author     : Andres Alvarez
--%>

<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession ob = request.getSession();
    ob.setAttribute("usuario", null);
    ob.setAttribute("nombre", "");
    ob.setAttribute("documento", "");
    ob.setAttribute("carrito", null);
    ob.setAttribute("administrador", null);
    ob.setAttribute("cliente", null);
    ob.setAttribute("vendedor", null);
    response.sendRedirect("index.jsp");
    

%>