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

    //Metodo para actualizar datos de usuario
    public boolean actualizarDatos(String numero_documento, String tipo_documento, String nombres, String apellidos, String correo) {

        PreparedStatement pst = null;

        try {

            String consulta = "UPDATE usuario SET tipo_documento= ?, nombres= ?, apellidos= ?, correo= ? WHERE numero_documento= ?";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, tipo_documento);
            pst.setString(2, nombres);
            pst.setString(3, apellidos);
            pst.setString(4, correo);
            pst.setString(5, numero_documento);

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

    //Metodo para actualizar contrasenia
    public boolean actualizarContrasenia(String numero_documento, String contrasenia_nueva, String contrasenia_vieja) {

        PreparedStatement pst = null;
        ResultSet rs = null;
        PreparedStatement pst2 = null;
        
        try {

            String consulta = "SELECT * FROM usuario WHERE numero_documento= ? AND contrasenia= ?";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, numero_documento);
            pst.setString(2, contrasenia_vieja);
            rs = pst.executeQuery();
            while (rs.next()) {

                String sql = "UPDATE usuario SET contrasenia= ? WHERE numero_documento= ?";
                pst2 = getConexion().prepareStatement(sql);
                pst2.setString(1, contrasenia_nueva);
                pst2.setString(2, numero_documento);

                if (pst2.executeUpdate() == 1) {
                    return true;
                }
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
                if (pst2 != null) {
                    pst.close();
                }
                if (rs != null) {
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

        //con.actualizarContrasenia("123", "123", "12345");
    }

}
