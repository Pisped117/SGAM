<%-- 
    Document   : actualizarDatos
    Created on : 20-jun-2020, 12:46:22
    Author     : Andres Alvarez
--%>
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
        <title>Actualizar</title>
    </head>
    <body>



        <% HttpSession con = request.getSession();
                String numero_documento = (String) con.getAttribute("documento");%>

        <% Conexion obj = new Conexion();
            PreparedStatement pst = null;
            ResultSet rs = null;
            try {
                String consulta = "SELECT * FROM usuario where numero_documento= ?;";
                pst = obj.getConexion().prepareStatement(consulta);
                pst.setString(1, numero_documento);
                rs = pst.executeQuery();

                while (rs.next()) {

        %>


    <center><h3>Actualiza tus datos</h3></center>
    <br>
    <form autocomplete="OFF" method="POST" action="UsuarioActualizar">
        <label>Numero de documento</label>
        <input type="text" readonly="ON" name="documento" value="<%=rs.getString("numero_documento")%>">
        <br> 
        <select name="tipo_documento">
            <option >Seleccione una opcion:</option>
            <option value="CC">Cedula de ciudadania</option>
            <option value="TI">Tarjeta de identidad</option>
            <option value="CE">Cedula de extranjeria</option>          
        </select>
        <br>
        <label>Nombres</label>
        <input type="text" name="nombres" value="<%=rs.getString("nombres")%>">
        <br>            
        <label>Apellidos</label>
        <input type="text" name="apellidos" value="<%=rs.getString("apellidos")%>">
        <br>            
        <label>Correo</label>
        <input type="text" name="correo" value="<%=rs.getString("correo")%>">
        <br>               
        <br>
        <input type="submit" value="registrar">
    </form>

    <% }

        } catch (SQLException e) {
            System.out.println("Error" + e);
        } finally {
            try {
                if (obj.getConexion() != null) {
                    obj.getConexion().close();
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
</body>
</html>
