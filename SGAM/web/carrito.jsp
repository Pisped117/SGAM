<%-- 
    Document   : carrito
    Created on : 26-jun-2020, 19:09:35
    Author     : Andres Alvarez
--%>

<%@include file="seguridad.jsp" %>
<%@include file="seguridadCliente.jsp" %>
<%@page import="Modelo.ProductoDAO"%>
<%@page import="Modelo.Producto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Carrito"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession(true);
    ArrayList<Carrito> lista = sesion.getAttribute("carrito") == null ? null : (ArrayList) sesion.getAttribute("carrito");

%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrito</title>
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
                        <a class="nav-link" href="menuCliente.jsp"><i class="fas fa-cart-plus"><label style="color: crimson"></label></i>Seguir Comprando</a>
                    </li>


                </ul>
            </div>
        </nav>

        <div class="container mt-4">
            <h3>Carrito</h3>
            <br>
            <div class="row">
                <div class="col-sm-8">
                    <table  class="table table-hover">


                        <thead>
                            <tr>

                                <th>NOMBRES</th>
                                <th>IMAGEN</th>
                                <th>PRECIO</th>
                                <th>CANTIDAD</th>
                                <th>SUBTOTAL</th>
                                <th>ACCIONES</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%  ProductoDAO pdao = new ProductoDAO();

                                int total = 0;
                                if (lista != null) {
                                    for (Carrito c : lista) {
                                        Producto pro = pdao.consultarId(c.getId_producto());
                                        total += c.getCantidad() * pro.getPrecio();
                            %>
                            <tr>
                                <td><%=pro.getNombre_producto()%></td> 
                                <td><img src="ProductoConsultarImagen?id=<%=pro.getId_producto()%>" width="120" height="120">
                                </td> 
                                <td>COP$ <%=pro.getPrecio()%></td> 
                                <td><%=c.getCantidad()%></td> 
                                <td>COP$ <%=c.getCantidad() * pro.getPrecio()%></td> 
                                <td><a class="btn btn-danger" href="EliminarArticulo?id_producto=<%=pro.getId_producto()%>">Eliminar</a></td>
                                
                            </tr>
                            <%}
                            } else {%>
                        <h4>No hay productos en el carrito</h4>
                            <%}%> 
                        </tbody>


                    </table>
                </div>
                <div class="col-sm-4">
                    <form action="AlquilerGenerar" method="POST">
                    <div class="card">
                        <div class="card-header">
                            <h3>Generar Compra</h3>
                        </div>
                        <div class="card-body">
                            <label>Comprador</label>
                            <input value="<%=sesion.getAttribute("documento")%>" type="text" readonly="" class="form-control" name="numero_documento">
                            <label>Fecha de entrega(Minimo 3 dias despues)</label>
                            <input type="date"  class="form-control" value="2020-01-01" name="fecha_entrega">
                            <label>Fecha de Devolucion</label>
                            <input  type="date"  class="form-control" value="2020-01-01" name="fecha_devolucion">
                            <label>Total a pagar COP$:</label>
                            <input value="<%=total%>" type="text" readonly="" class="form-control" name="precio_alquiler">
                            <input value="3" name="id_rol" type="hidden">
                        </div>
                        <div class="card-footer">                                                       
                            <input class="btn btn-warning btn-block" value="Generar compra" type="submit">
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div> 
    </body>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</html>
