<%-- 
    Document   : consultarProductos
    Created on : 21-jun-2020, 11:40:54
    Author     : Juan Pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Producto</title>
    </head>
    <body>
         </div>
            <div class="form-group">
                <table class="table table-hover">
                    <thead>
                        <tr class="text-center">
                            <th>ID</th>
                            <th>NOMBRES</th>
                            <th>IMAGEN</th>
                            <th>ACCION</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="p" items="${productos}">
                            <tr class="text-center">
                                <td>${p.id_producto}</td>
                                <td>${p.nombre_producto}</td>
                                <td><img src="${p.imagen_producto}" height="100" width="100"></td>
                                <td>
                                    <a href="#" class="btn btn-warning">Editar</a>
                                    <a href="#" class="btn btn-danger">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>                    
                    </tbody>
                </table>                         
            </div>
        </div>
        
        
    </body>
</html>
