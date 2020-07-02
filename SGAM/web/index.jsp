<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
        <meta name="generator" content="Jekyll v4.0.1">
        <title>Bienvenido</title>
        <link rel="icon" href="Img/logoCaterpillar.png" >

        <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/sign-in/">


        <!-- Bootstrap core CSS -->
        <link href="CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
        <style>
            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }
        </style>
        <!-- Custom styles for this template -->
        <link href="CSS/Login.css" rel="stylesheet" type="text/css" />
    </head>
    <body class="text-center">
        <form class="form-signin" action="UsuarioIniciar" method="POST" autocomplete="OFF">
            <img class="mb-4" src="Img/logoCaterpillar.png" alt="" width="150" height="150">
            <h1 class="h3 mb-3 font-weight-normal">Inicia Sesion</h1>
            <label for="inputEmail" class="sr-only">Documento</label>
            <input type="text" id="inputEmail" class="form-control" placeholder="Numero de documento" required autofocus name="documento">
            <label for="inputPassword" class="sr-only">Contraseña</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="Contraseña" required name="contrasenia">
            <div class="checkbox mb-3">
                <label>
                    <input type="checkbox" value="remember-me"> Recuerdame
                </label>
            </div>
            <button class="btn btn-lg btn-warning btn-block" type="submit">Entrar</button>
            <br>
            <br>
            ¿No estas registrado?<a href="registrarUsuario.jsp">Registrate</a>
            <a href="recuperarContrasenia.jsp">¿Olvidaste tu contraseña?</a>

        </form>
    </body>
</html>
