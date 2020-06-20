
package Modelo;

import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Andres Alvarez
 */
public class Permisos extends Conexion{
    
    
     //Metodo para asignar permiso
    public boolean asignarPermiso(int id_rol, String numero_documento) {

        PreparedStatement pst = null;
      
        try {

            String consulta = "INSERT INTO permisos (numero_Documento,id_rol) VALUES (?,?); ";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, numero_documento);
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

     //Metodo para eliminar permiso
    public boolean eliminarPermiso(int id_rol, String numero_documento) {

        PreparedStatement pst = null;
        try {

            String consulta = "DELETE FROM permisos WHERE id_rol= ? AND numero_documento= ?; ";
            pst = getConexion().prepareStatement(consulta);
            pst.setInt(1, id_rol);
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

    
}
