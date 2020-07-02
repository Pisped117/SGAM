<%-- 
    Document   : menuCliente
    Created on : 20-jun-2020, 12:25:23
    Author     : Andres Alvarez
--%>
<%@include file="seguridad.jsp" %>
<%@include file="seguridadCliente.jsp" %>
<%@page import="Modelo.Carrito"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Producto"%>
<%@page import="Modelo.ProductoDAO"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Modelo.Conexion"%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Cliente</title>
                <link rel="icon" href="Img/logoCaterpillar.png" >

    </head>
    <body>      

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            

            <a class="navbar-brand">SGAM</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link"><%out.println(session.getAttribute("nombre"));%><span class="sr-only">(current)</span></a>
                    </li>
       
                    <li class="nav-item">
                        <a class="nav-link" href="carrito.jsp"><i class="fas fa-cart-plus"><label style="color: crimson"></label></i>Carrito</a>
                    </li>

                   
                    <li class="nav-item">
                        <a class="nav-link" href="salir.jsp">Salir</a>
                    </li>
                    <li class="nav-item dropdown">
                        <%@include file="permisos.jsp"%>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container mt-2">
            <div class="row">

                <%                     Conexion on = new Conexion();
                    PreparedStatement ps = null;
                    ResultSet rss = null;
                    try {
                        String consulta = "SELECT * FROM producto;";
                        ps = on.getConexion().prepareStatement(consulta);
                        rss = ps.executeQuery();

                        while (rss.next()) {%>
               
                <div class="col-sm-4">
                    <form action="CarritoAgregar" method="POST">
                    <div class="card">
                        <div class="card-header">
                            <label><%=rss.getString("nombre_producto")%></label>
                        </div>
                          <div class="card-header">
                              <label>Cantidad:</label>
                              <input type="number" name="cantidad" value="1">
                        </div>
                        <div class="card-body">
                            <i>COP$ <%=rss.getString("precio")%></i>
                            <br>

                            <img src="ProductoConsultarImagen?id=<%=rss.getString("id_producto")%>" width="200" height="180"    >
                        </div>
                        <div class="card-footer text-center">
                            <input type="hidden" value="<%=rss.getString("id_producto")%>"  name="id_producto">
                            <input class="btn btn-outline-success" type="submit" value="Agregar al carrito">
                        </div>
                    </div>  
                    </form>
                </div> 

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
            </div>
        </div>            

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>
