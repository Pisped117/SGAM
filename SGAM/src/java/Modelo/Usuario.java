package Modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Andres Alvarez
 */
public class Usuario extends Conexion {

    //Metodo para registrar usuario
    public boolean registrar(String numero_documento, String tipo_documento, String nombres, String apellidos, String contrasenia, String correo, String estado) {

        PreparedStatement pst = null;
        try {

            String consulta = "insert into usuario values(?,?,?,?,?,?,?); ";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, numero_documento);
            pst.setString(2, tipo_documento);
            pst.setString(3, nombres);
            pst.setString(4, apellidos);
            pst.setString(5, correo);
            pst.setString(6, contrasenia);
            pst.setString(7, estado);

            if (pst.executeUpdate() == 1) {
                return true;
            }

        } catch (SQLException ex) {
            System.err.println("Error" + ex);
        } finally {
            try {
                if (getConexion() != null) {
                    getConexion().close();
                }
                if (pst != null) {
                    pst.close();
                }

            } catch (SQLException e) {
                System.err.println("Error" + e);
            }
        }
        return false;

    }

    //Metodo para iniciar sesion
    public String inicioSesion(String usuario, String password) {
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String consulta = "select * from usuario where numero_Documento = ? and contrasenia = ? AND estado='Habilitado'";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, password);
            rs = pst.executeQuery();

            String nombre = "";

            if (rs.absolute(1)) {

                nombre = "" + rs.getString(3) + " " + rs.getString(4);
                System.out.println(nombre);
                return nombre;

            }

        } catch (Exception e) {
            System.err.println("Error" + e);

        } finally {
            try {
                if (getConexion() != null) {
                    getConexion().close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (Exception e) {
                System.err.println("Error" + e);
            }

        }

        return "";
    }

    //Metodo para cambiar estado de usuario
    public boolean cambiarEstado(String numero_documento, String estado) {

        PreparedStatement pst = null;
        try {

            String consulta = "UPDATE usuario SET estado= ? WHERE numero_Documento= ? ";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, estado);
            pst.setString(2, numero_documento);

            if (pst.executeUpdate() == 1) {
                return true;
            }

        } catch (SQLException ex) {
            System.err.println("Error" + ex);
        } finally {
            try {
                if (getConexion() != null) {
                    getConexion().close();
                }
                if (pst != null) {
                    pst.close();
                }

            } catch (SQLException e) {
                System.err.println("Error" + e);
            }
        }
        return false;

    }

    public static void main(String[] args) {

        Usuario con = new Usuario();

        con.cambiarEstado("12345", "Habilitado");
    }

}
