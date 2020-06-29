<%-- 
    Document   : permisos
    Created on : 18-jun-2020, 12:42:11
    Author     : JAndres Alvarez
--%>

<%@page session="true"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Modelo.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>

    </head>

    <link href="css/rol.css" rel="stylesheet" type="text/css"/>
    <body>
        <header>
            <select name="permiso" class="" onchange="location = this.value;">  <br>
                <option>Seleccione rol:</option>
                <option value='menuUsuario.jsp'>Usuario</option>
                <%

                    int contador = 0;
                    String documento = (String) session.getAttribute("documento");
                    Conexion con = new Conexion();

                    String sql = "SELECT * FROM permisos WHERE numero_documento='" + documento + "'";
                    PreparedStatement pst = null;
                    ResultSet rs = null;
                    try {
                        pst = con.getConexion().prepareStatement(sql);
                        rs = pst.executeQuery();
                        String nombre_rol = "";
                        contador = contador++;
                        while (rs.next()) {

                            String id_rol = rs.getString("id_rol");
                            String sql2 = "SELECT * FROM roles WHERE id_rol='" + id_rol + "'";
                            PreparedStatement pst2 = null;
                            ResultSet rs2 = null;
                            pst2 = con.getConexion().prepareStatement(sql2);
                            rs2 = pst2.executeQuery();

                            while (rs2.next()) {
                                nombre_rol = rs2.getString("nombre_rol");

                                if (nombre_rol.equals("Administrador")) {
                                    session.setAttribute("administrador", "1");
                %>
                <option value="menuAdministrador.jsp"><a ><%=nombre_rol%></a></option>
                <%
                    } else {
                        session.setAttribute("administrador", null);
                    }
                    if (nombre_rol.equals("Vendedor")) {
                        session.setAttribute("vendedor", "1");
                %>
                <option value="menuVendedor.jsp"><a ><%=nombre_rol%></a></option>
                <%
                    } else {
                        session.setAttribute("vendedor", null);
                    }
                    if (nombre_rol.equals("Cliente")) {
                        session.setAttribute("cliente", "1");
                %> 
                <option value="menuCliente.jsp"><a ><%=nombre_rol%></a></option>
                <%

                    } else {
                        session.setAttribute("cliente", null);
                    }

                %>
                <%                            }

                        }

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
            </select> 
        </header>
    </body>
</html>
