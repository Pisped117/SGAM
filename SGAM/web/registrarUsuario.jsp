<%-- 
    Document   : registrarUsuario
    Created on : 16-jun-2020, 14:40:18
    Author     : Juan Pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrate</title>
    </head>
    <body>
        <form autocomplete="OFF" action="UsuarioRegistrar">
            
            <center><h3>Registrar usuario</h3></center>
            <br>            
            <label>Numero de documento</label>
            <input type="text" name="documento">
            <br> 
            <select name="tipo_documento">
                <option value="CC">Cedula de ciudadania</option>
                <option value="TI">Tarjeta de identidad</option>
                <option value="CE">Cedula de extranjeria</option>          
            </select>
            <br>
            <label>Nombres</label>
            <input type="text" name="nombres">
            <br>            
            <label>Apellidos</label>
            <input type="text" name="apellidos">
            <br>            
            <label>Correo</label>
            <input type="text" name="correo">
            <br>            
            <label>Password</label>
            <input type="text" name="contrasenia">
            <br>
            <input type="submit" value="registrar">
   
        </form>         
    </body>
</html>
