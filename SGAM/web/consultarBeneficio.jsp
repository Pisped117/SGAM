<%-- 
    Document   : consultarBeneficio
    Created on : 19-jun-2020, 15:05:52
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
    </head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="css/styledocumento.css" rel="stylesheet" type="text/css"/>

    <body>
        <nav>
            <div class="container">
                <br>
                <h1>Beneficios de alquileres</h1>
                <a href="menuAdministrador.jsp" style="color: white" class="btn btn-info">Volver</a>
                <br>
                <br>
                <table  class="table table-sm table-bordered table-dark ">
                    <thead class="thead-dark">
                        <tr>
                            <th class="text-center">Nombre del beneficio</th>
                            <th class="text-center">Descripcion</th>
                            <th class="text-center">Acciones</th>

                        </tr>
                        <%  Conexion con = new Conexion();
                            PreparedStatement pst = null;
                            ResultSet rs = null;
                            try {
                                String consulta = "SELECT * FROM beneficios;";
                                pst = con.getConexion().prepareStatement(consulta);
                                rs = pst.executeQuery();

                                while (rs.next()) {
                        %>
                        <tr>
                            <td class="text-center"><%=rs.getString("nombre_beneficio")%></td>
                            <td class="text-center"><%=rs.getString("descripcion_beneficio")%></td>

                            <td class="text-center">                               
                                <a style="color: white" class="btn btn-danger" href="BeneficiosEliminar?id_beneficio=<%=rs.getInt("id_beneficio")%>">Eliminar</a> 
                                <a style="color: white" class="btn btn-warning" href="actualizarBeneficio.jsp?id_beneficio=<%=rs.getInt("id_beneficio")%>">Actualizar</a>
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
