<%-- 
    Document   : consultarRoles
    Created on : 18-jun-2020, 14:49:00
    Author     : Andres Alvarez
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
        <title>Registrar</title>
    </head>
    <body>
        <form autocomplete="OFF" action="PermisosAsignar" method="POST">
            
            <center><h3>Registrar permisos</h3></center>
            <br>            
            <label>Numero de documento</label>
            <input type="text" name="numero_documento">
            <br>
            <select name="id_rol">
                <option >Seleccione rol:</option>
                <%   
                 Conexion con = new Conexion();
                   
                    String sql = "SELECT * FROM roles ";
                    PreparedStatement pst = null;
                    ResultSet rs = null;
                    try {
                        pst = con.getConexion().prepareStatement(sql);
                        rs = pst.executeQuery();
                        while (rs.next()) {
                
                %>
                
                <option value='<%=rs.getString("id_rol")%>'><%=rs.getString("nombre_rol")%></option>
                
                <% }

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
                
            </select>
                    <br>
                    <br>
            <input type="submit" value="registrar">
   
        </form>         
    </body>
</html>
