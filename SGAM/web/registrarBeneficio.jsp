<%-- 
    Document   : registrarBeneficio
    Created on : 19-jun-2020, 14:55:53
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
        <form autocomplete="OFF" action="BeneficioRegistrar" method="POST">
            
            <center><h3>Registrar Beneficio</h3></center>
            <br>            
            <label>Nombre del beneficio</label>
            <input type="text" name="nombre_beneficio">
            <br> 
            <label>Descripcion</label>
            <br>
            <textarea name="descripcion" placeholder="Describe el beneficio"></textarea>
            <br> 
            <input type="submit" value="registrar">
   
        </form>         
    </body>
</html>
