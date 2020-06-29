<%-- 
    Document   : registrarUsuario
    Created on : 16-jun-2020, 14:40:18
    Author     : Andres Alvarez
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <title>Producto</title>
                <link rel="icon" href="Img/logoCaterpillar.png" >

    </head>
    <body>
        <div class="container mt-4">
            <div class="form-group">
                <form action="UsuarioRegistrar" class="col-md-6" method="POST" autocomplete="OFF" >
                    <div class="card">
                        <div class="card-header">
                            <h3>Registrar Usuario</h3>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label>Documento</label>
                                <input type="text" name="documento" class="form-control">
                            </div>
                            <div class="form-group">
                                <select name="tipo_documento">
                                    <option value="CC">Cedula de ciudadania</option>
                                    <option value="TI">Tarjeta de identidad</option>
                                    <option value="CE">Cedula de extranjeria</option>          
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Nombre</label>
                                <input type="text" name="nombres" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Apellido</label>
                                <input type="text" name="apellidos" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Correo</label>
                                <input type="text" name="correo" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" name="contrasenia" class="form-control">
                            </div>
                        </div>
                        <div class="card-footer">
                            <button class="btn btn-outline-primary" name="accion" value="Guardar">Guardar</button>
                        </div>                
                    </div>
                </form>
                <a href="index.jsp" class="btn btn-link">Volver</a>
            </div>
        </div>   

            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>