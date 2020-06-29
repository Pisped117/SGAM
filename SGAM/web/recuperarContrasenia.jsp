<%-- 
    Document   : recuperarContraseña
    Created on : 26/06/2020, 08:05:45 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.0.1">
    <title>Recuperar contraseña</title>
            <link rel="icon" href="Img/logoCaterpillar.png" >


    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/checkout/">
    <link rel="icon" href="imagenes/C10000554.jpeg" >
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="icon" href="Img/logoCaterpillar.png" >
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
    <link href="css/form-validation.css" rel="stylesheet">
  </head>
  <body class="bg-light">
           <div class="container mt-4">
            <div class="form-group">
                <form action="RecuperarContrasenia" class="col-md-6" method="POST" autocomplete="OFF" >
                    <div class="card">
                        <div class="card-header">
                            <h3>Registrar Usuario</h3>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label>Documento</label>
                                <input type="text" name="documento" class="form-control">
                            </div>                           
                        <div class="card-footer">
                            <button class="btn btn-outline-primary" name="accion" value="Guardar">Guardar</button>
                            <a class="btn btn-outline-success" href="index.jsp">Volver</a>
                        </div>                
                    </div>
                </form>
            </div>
        </div>   

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="../assets/dist/js/bootstrap.bundle.js"></script>
        <script src="css/form-validation.js"></script></body>
</html>
