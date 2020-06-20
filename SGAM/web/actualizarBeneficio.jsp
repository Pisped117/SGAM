<%-- 
    Document   : actualizarBeneficio
    Created on : 19-jun-2020, 15:23:22
    Author     : Juan Pablo
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Modelo.Conexion"%>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Actualizar</title>
</head>
<body>
    <link href="css/styleregistraruser.css" rel="stylesheet" type="text/css"/>

<center> <h1 class="user__title">Actualizar Beneficio</h1></center>


<div class="user" >
    
    <%
        int id_beneficio =Integer.parseInt(request.getParameter("id_beneficio"));
            Conexion con = new Conexion();
            PreparedStatement pst = null;
            ResultSet rs = null;
            try {   
                String consulta = "SELECT * FROM beneficios where id_beneficio= ?;";
                pst = con.getConexion().prepareStatement(consulta);
                pst.setInt(1, id_beneficio);
                rs = pst.executeQuery();

                while (rs.next()) {

        %>
    <form class="form" action="BeneficioActualizar" method="post">

        
        <div class="form__group">
            <input name="id_beneficio" readonly hidden type="text" value="<%=rs.getString(1)%>" placeholder="Codigo del Rol" class="form__input" />
        </div>
        <br>
        <div class="form__group">
            <input name="nombre_beneficio" type="text" value="<%=rs.getString(2)%>" placeholder="Nombre dle rol" class="form__input" />

        </div>
        <br>
        <div class="form__group">
            <label>Descipcion del beneficio</label>
            <br>
           <textarea name="descripcion_beneficio"><%=rs.getString(3)%></textarea>
        </div>
        <br>
        <%}%>
        <center><input class="boton" name="opcion" value="Guardar" type="submit">  

        </center>
    </form>


</div>
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