<%-- 
    Document   : salir
    Created on : 18-jun-2020, 14:45:18
    Author     : Andres Alvarez
--%>

<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession ob = request.getSession();
    ob.setAttribute("usuario", "0");
    ob.setAttribute("nombre", "");
    ob.setAttribute("documento", "");
    response.sendRedirect("index.jsp");
    

%>