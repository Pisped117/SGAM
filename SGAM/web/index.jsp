<%-- 
    Document   : index
    Created on : 16-jun-2020, 13:45:00
    Author     : Juan Pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar</title>
    </head>
    <body>
    <center><form action="UsuarioIniciar" method="POST" autocomplete="OFF">
            
            <h4>Login</h4>
           
            <br>
            <a>Numero de documento</a>
            <br>
            <input type="text" name="documento">
            <br>
            <br>
            <a>Password</a>
            <br>
            <input type="text" name="contrasenia">
            <br>
            <br>
            <input type="submit" value="Ingresar">

        </form>
     <br>
            <a href="registrarUsuario.jsp">Registrate</a>
            <br>
            <a href="">¿Olvidaste tu contraseña?</a>
    </center>
    
</body>
</html>
