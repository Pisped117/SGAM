<%-- 
    Document   : registrarRoles
    Created on : 18-jun-2020, 15:05:14
    Author     : Andres Alvarez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar</title>
    </head>
    <body>
        <form autocomplete="OFF" action="RolesRegistrar" method="POST">
            
            <center><h3>Registrar rol</h3></center>
            <br>            
            <label>Nombre del rol</label>
            <input type="text" name="nombre">
            <br> 
            <input type="submit" value="registrar">
   
        </form>         
    </body>
</html>
