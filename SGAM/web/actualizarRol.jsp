<%-- 
    Document   : actualizarRol
    Created on : 18-jun-2020, 15:20:13
    Author     : Andres Alvarez
--%>
<%@include file="seguridad.jsp" %>
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
        <title>Administrador</title>
    </head>
    <body>
        <div class="container mt-4">
            <div class="form-group">
                <form action="RolesActualizar" class="col-md-6" method="POST" autocomplete="OFF" >
                    <div class="card">
                        <div class="card-header">
                            <h3>Actualizar Rol</h3>
                        </div>

                        <%
                            int id_rol = Integer.parseInt(request.getParameter("id_rol"));
                            Conexion con = new Conexion();
                            PreparedStatement pst = null;
                            ResultSet rs = null;
                            try {
                                String consulta = "SELECT * FROM roles where id_rol= ?;";
                                pst = con.getConexion().prepareStatement(consulta);
                                pst.setInt(1, id_rol);
                                rs = pst.executeQuery();

                                while (rs.next()) {

                        %>

                        <div class="card-body">
                            <div class="form-group">
                                <label>Nombre del rol</label>
                                <input name="id_rol" hidden readonly type="text" value="<%=rs.getString(1)%>" placeholder="Codigo del Rol" class="form__input" />
                                <input name="nombre_rol" type="text" value="<%=rs.getString(2)%>" placeholder="Nombre dle rol" class="form-control" />
                            </div>
                            <div class="card-footer">
                                <button class="btn btn-outline-primary" name="accion" value="Guardar">Guardar</button>
                            </div>   

                            <%                                    }
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
                                }
                            %>
                        </div>
                </form>
            </div>

            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
