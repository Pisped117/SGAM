<%-- 
    Document   : consultarProductos
    Created on : 21-jun-2020, 11:40:54
    Author     : Juan Pablo
--%>


<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Modelo.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <title>Consultar Producto</title>
    </head>
    <body>

    </div>
    <div class="form-group">
        <table class="table table-light">
            <thead>
                <tr class="text-center">
                    <th>Producto</th>
                    <th>Precio</th>
                    <th>Imagen</th>
                    <th>Accion</th>
                </tr>
            </thead>


            <%  Conexion con = new Conexion();
                PreparedStatement pst = null;
                ResultSet rs = null;
                try {
                    String consulta = "SELECT * FROM producto;";
                    pst = con.getConexion().prepareStatement(consulta);
                    rs = pst.executeQuery();

                    while (rs.next()) {%>

            <tbody>

                <tr class="text-center">
                    <td><%=rs.getString("nombre_producto")%></td>
                    <td><%=rs.getString("precio")%></td>
                    <td><img src="ProductoConsultarImagen?id=<%=rs.getInt("id_producto")%>" height="100" width="100"></td>
                    <td>
                        <a href="actualizarProducto.jsp?id_producto=<%=rs.getInt("id_producto")%>" class="btn btn-warning">Actualizar</a>
                        <a href="ProductoEliminar?id_producto=<%=rs.getInt("id_producto")%>" class="btn btn-danger">Borrar</a>
                    </td>
                </tr>

                <%   }
                    } catch (SQLException e) {
                        System.out.println("Error" + e);
                    } finally {
                        try {
                            if (con.getConexion() != null) {
                                con.getConexion().close();
                            }
                            if (pst != null) {
                                pst.close();
                            }
                            if (rs != null) {
                                rs.close();
                            }

                        } catch (SQLException e) {
                            System.err.println("Error" + e);
                        }
                    }%>


            </tbody>
        </table>   
        <a href="menuVendedor.jsp" class="btn btn-link">Salir</a>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
