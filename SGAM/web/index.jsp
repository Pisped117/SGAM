<%-- 
    Document   : index
    Created on : 16-jun-2020, 13:45:00
    Author     : Andres Alvarez
--%>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="CSS/style.css" rel="stylesheet" type="text/css"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>Bienvenido</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="CSS/style.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" href="Img/logoCaterpillar.png" >
    </head>
    <body>
        <div class="wrapper fadeInDown">
            <div id="formContent">

                <div class="fadeIn first">
                    <img src="Img/logoCaterpillar.png" id="icon" alt="User Icon" />
                </div>


                <form action="UsuarioIniciar" method="POST" autocomplete="OFF">
                    <input type="text" id="login" class="fadeIn second" name="documento" placeholder="Documento">
                    <input type="text" id="password" class="fadeIn third" name="contrasenia" placeholder="Contraseña">
                    <input type="submit" class="fadeIn fourth" value="Ingresar">
                </form>


                <div id="formFooter">
                    <a class="underlineHover" href="#">¿Olvidaste tu contraseña?</a>
                </div>
                <div id="formFooter">
                    <a class="underlineHover" href="registrarUsuario.jsp">Registrate</a>
                </div>

            </div>
        </div>
    </body>
</html>

