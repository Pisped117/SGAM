<%-- 
    Document   : registrarProducto
    Created on : 20-jun-2020, 17:59:31
    Author     : Juan Pablo
--%>
<%--   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <title>Producto</title>
    </head>
    <body>
        <div class="container mt-4">
            <div class="form-group">
                <form action="ProductoRegistrar" class="col-md-6" method="POST" enctype="multipart/form-data">
                    <div class="card">
                        <div class="card-header">
                            <h3>Registrar Producto</h3>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label>Nombre del Producto</label>
                                <input type="text" name="nombre_producto" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Precio del producto</label>
                                <input type="text" name="precio_producto" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Imagen</label>
                                <input type="file" name="imagen_producto">
                            </div>
                        </div>
                        <div class="card-footer">
                            <button class="btn btn-outline-primary" name="accion" value="Guardar">Guardar</button>
                        </div>                
                    </div>
                </form>
            </div>
  
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>