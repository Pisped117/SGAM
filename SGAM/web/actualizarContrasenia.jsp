<%-- 
    Document   : actualizarContrasenia
    Created on : 20-jun-2020, 13:31:49
    Author     : Andres Alvarez
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Modelo.Conexion"%>
<%@page session="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar</title>
    </head>
    <body>
        <% HttpSession con = request.getSession();
            String numero_documento = (String) con.getAttribute("documento");%>
    <center><h3>Actualiza tus datos</h3></center>
    <br>
    <form autocomplete="OFF" method="POST" action="ActualizarContrasenia">
        <input type="text" readonly="ON" hidden name="documento" value="<%=numero_documento%>">  
        <label>Ingrese contraseña actual</label>
        <input type="text" name="contrasenia_vieja" value="">
        <br>            
        <label>Ingrese nueva contraseña</label>
        <input type="text" name="contrasenia_nueva" value="">
        <br>            
        <label>Verifique nueva contraseña</label>
        <input  type="text" name="contrasenia_nuevarepeticion" value="">
        <br>               
        <br>
        <input type="submit" value="registrar">
    </form>


</body>
</html>

