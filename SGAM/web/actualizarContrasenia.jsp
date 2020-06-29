<%-- 
    Document   : actualizarContrasenia
    Created on : 20-jun-2020, 13:31:49
    Author     : Andres Alvarez
--%>
<%@include file="seguridad.jsp" %>
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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <title>Usuario</title>
        <link rel="icon" href="Img/logoCaterpillar.png" >
    </head>
    <body>
        <div class="container mt-4">
            <div class="form-group">
                <form action="ActualizarContrasenia" class="col-md-6" method="POST" autocomplete="OFF" >
                    <div class="card">

                        <% HttpSession con = request.getSession();
                             String numero_documento = (String) con.getAttribute("documento");%>
                        <div class="card-header">
                            <h3>Actualizar Contraseña</h3>
                        </div>
                        <div class="card-body">                          
                            <div class="form-group">
                                <label>Ingrese contraseña actual</label>
                                <input type="text" readonly="ON" hidden name="documento" value="<%=numero_documento%>"> 
                                <input type="password" name="contrasenia_vieja" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Ingrese nueva contraseña</label>
                                <input type="password" name="contrasenia_nueva" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Verifique nueva contraseña</label>
                                <input type="password" name="contrasenia_nuevarepeticion" class="form-control">
                            </div>
                        </div>
                        <div class="card-footer">
                            <button class="btn btn-outline-primary" name="accion" value="Guardar">Guardar</button>
                        </div>                
                    </div>
                </form>
                                <a href="menuUsuario.jsp" class="btn btn-link">Volver</a>
            </div>

            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>

