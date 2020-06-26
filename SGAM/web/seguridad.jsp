<%-- 
    Document   : seguridad
    Created on : 03-may-2020, 16:32:57
    Author     : Juan Pablo
--%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%



if (session.getAttribute("usuario") != "1") {
        response.sendRedirect("index.jsp");
    }



%>