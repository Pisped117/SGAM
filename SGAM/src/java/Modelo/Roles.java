
package Modelo;

import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Andres Alvarez
 */
public class Roles extends Conexion{
    
    //Metodo para registrar roles
    public boolean registrarRol(String nombre_rol) {

        PreparedStatement pst = null;
        try {

            String consulta = "insert into roles (nombre_rol) values(?); ";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, nombre_rol);

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

    //Metodo para actualizar rol
    public boolean acualizarRol(int id_rol, String nombre_rol) {

        PreparedStatement pst = null;
        try {

            String consulta = "UPDATE roles SET nombre_rol= ? WHERE id_rol= ? ; ";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, nombre_rol);
            pst.setInt(2, id_rol);

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

     //Metodo para eliminar rol
    public boolean eliminarRol(int id_rol) {

        PreparedStatement pst = null;
        try {

            String consulta = "DELETE FROM roles WHERE id_rol= ?; ";
            pst = getConexion().prepareStatement(consulta);
            pst.setInt(1, id_rol);

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
    
}
