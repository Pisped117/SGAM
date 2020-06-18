<%-- 
    Document   : actualizarRol
    Created on : 18-jun-2020, 15:20:13
    Author     : Andres Alvarez
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

<center> <h1 class="user__title">Actualizar Rol</h1></center>


<div class="user" >
    
    <%
        int id_rol =Integer.parseInt(request.getParameter("id_rol"));
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
    <form class="form" action="RolesActualizar" method="post">

        
        <div class="form__group">
            <input name="id_rol" readonly type="text" value="<%=rs.getString(1)%>" placeholder="Codigo del Rol" class="form__input" />
        </div>
        <br>
        <div class="form__group">
            <input name="nombre_rol" type="text" value="<%=rs.getString(2)%>" placeholder="Nombre dle rol" class="form__input" />

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