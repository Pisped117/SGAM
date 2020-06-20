package Modelo;

import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Andres Alvarez
 */
public class Beneficio extends Conexion{
    
    //Metodo para registrar beneficio
    public boolean registrarBeneficio(String nombre_beneficio, String descripcion_beneficio) {

        PreparedStatement pst = null;

        try {
            String sql = "INSERT INTO beneficios (nombre_beneficio,descripcion_beneficio) VALUES(?,?);";
            pst = getConexion().prepareStatement(sql);
            pst.setString(1, nombre_beneficio);
            pst.setString(2, descripcion_beneficio);
           
            if (pst.executeUpdate() == 1) {
                return true;
            }

        } catch (SQLException e) {
            System.out.println("Error: " + e);
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
    
        //Metodo para actualizar beneficio
    public boolean actualizarBeneficio(int id_beneficio, String nombre_beneficio, String descripcion_beneficio) {

        PreparedStatement pst = null;
        String sql = "update beneficios set nombre_beneficio= ?, descripcion_beneficio= ? where id_beneficio= ?;";
        try {
            pst = getConexion().prepareStatement(sql);
            pst.setString(1, nombre_beneficio);
            pst.setString(2, descripcion_beneficio);
            pst.setInt(3, id_beneficio);
            if (pst.executeUpdate() == 1) {
                return true;
            }

        } catch (SQLException e) {
            System.out.println("Error: " + e);
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

      //Metodo para eliminar beneficio
    public boolean eliminarBeneficio(int id_beneficio) {

        PreparedStatement pst = null;

        try {

            String consulta = "delete from beneficios where id_beneficio= ?;";
            pst = getConexion().prepareStatement(consulta);
            pst.setInt(1, id_beneficio);

            if (pst.executeUpdate() == 1) {
                return true;
            }

        } catch (SQLException e) {
            System.out.println("Error" + e);
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


    /*public static void main(String[] args) {
        
        Beneficio ben = new Beneficio();
        
        ben.registrarBeneficio("safrasefra", "asdfasfas");
    }*/
    
}
