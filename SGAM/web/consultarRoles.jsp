<%-- 
    Document   : consultarRoles
    Created on : 18-jun-2020, 14:49:00
    Author     : Andres Alvarez
--%>
<%@include file="seguridad.jsp" %>
<%@include file="seguridadAdministrador.jsp" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Modelo.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar</title>
                <link rel="icon" href="Img/logoCaterpillar.png" >

    </head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="css/styledocumento.css" rel="stylesheet" type="text/css"/>

    <body>
        <nav>
            <div class="container">
                <br>
                <h1>Roles de SGAM</h1>
                <a href="menuAdministrador.jsp" style="color: white" class="btn btn-info">Volver</a>
                <br>
                <br>
                <table  class="table table-sm table-bordered table-dark ">
                    <thead class="thead-dark">
                        <tr>
                            <th class="text-center">Numero de documento</th>
                            <th class="text-center">Nombres</th>

                        </tr>
                        <%  Conexion con = new Conexion();
                            PreparedStatement pst = null;
                            ResultSet rs = null;
                            try {
                                String consulta = "SELECT * FROM roles;";
                                pst = con.getConexion().prepareStatement(consulta);
                                rs = pst.executeQuery();

                                while (rs.next()) {
                        %>
                        <tr>
                            <td class="text-center"><%=rs.getString("nombre_rol")%></td>

                            <td class="text-center">                               
                                <a style="color: white" class="btn btn-danger" href="RolesEliminar?id_rol=<%=rs.getInt("id_rol")%>">Eliminar</a> 
                                <a style="color: white" class="btn btn-warning" href="actualizarRol.jsp?id_rol=<%=rs.getInt("id_rol")%>">Actualizar</a>
                            </td>
                        </tr>
                        <%}%>
                    </thead>
                </table>
            </div>
        </nav>
    </body>
</html>
<%
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

