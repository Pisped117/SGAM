package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.apache.jasper.tagplugins.jstl.core.ForEach;

/**
 *
 * @author Andres Alvarez
 */
public class AlquilerDAO {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement pst;
    ResultSet rs;
    int res = 0;

    public int generarAlquiler(Alquiler alquiler) {

        int codigo_alquiler = 0;
        String sql = "INSERT INTO alquiler (precio_alquiler,fecha_entrega,fecha_devolucion,numero_documento,id_rol) VALUES (?,?,?,?,?)";
        try {
            con = cn.getConexion();
            pst = con.prepareStatement(sql);
            pst.setInt(1, alquiler.getPrecio_alquiler());
            pst.setString(2, alquiler.getFecha_entrega());
            pst.setString(3, alquiler.getFecha_devolucion());
            pst.setString(4, alquiler.getNumero_documento());
            pst.setInt(5, alquiler.getId_rol());
            res = pst.executeUpdate();

            sql = "SELECT @@IDENTITY AS codigo_alquiler";
            rs = pst.executeQuery(sql);
            rs.next();
            codigo_alquiler = rs.getInt("codigo_alquiler");
            rs.close();

            for (Carrito c : alquiler.getProductos()) {
                sql = "INSERT INTO alquiler_mayor VALUES (?,?)";
                pst = con.prepareStatement(sql);
                pst.setInt(1, c.getId_producto());
                pst.setInt(2, codigo_alquiler);
                res = pst.executeUpdate();

            }
        } catch (SQLException e) {
        }

        return codigo_alquiler;
    }

    public boolean aplicarBeneficio(int codigo_alquiler, int id_beneficio) {
        
        
        boolean verificacion = false;
        String sql = "INSERT INTO beneficios_alquiler_mayor VALUES (?,?)";

        try {
            con = cn.getConexion();
            pst = con.prepareStatement(sql);
            pst.setInt(1, codigo_alquiler);
            pst.setInt(2, id_beneficio);
            
            if(pst.executeUpdate()==1){
                verificacion = true;
            }

        } catch (Exception e) {
        }

        return verificacion;
    }

   /* public static void main(String[] args) {
        AlquilerDAO adao = new AlquilerDAO();
        
        adao.aplicarBeneficio(10, 1);
    }*/
    
}
