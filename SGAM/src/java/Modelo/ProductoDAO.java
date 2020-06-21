package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Andres Alvarez
 */
public class ProductoDAO extends Conexion {

    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    int res = 0;

    //Metodo para consultar Productos
    public List consultarProducto() {

        List<Producto> lista = new ArrayList<>();
        Conexion cn = new Conexion();

        String sql = "SELECT * FORM producto;";
       

        try {
            con = cn.getConexion();
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();

            while(rs.next()){
                
                Producto pro = new Producto();
                
                pro.setImagen_producto(rs.getBinaryStream(2));
                pro.setNombre_producto(rs.getString(3));
                pro.setPrecio(rs.getInt(4));
                
                lista.add(pro);
                
            }
                

        } catch (SQLException e) {
            System.err.println("Error" + e);
        } 

        return lista;

    }

    //Metodo para registrar productos
    public void registrarProducto(Producto pro) {

        Conexion cn = new Conexion();

        String sql = "INSERT INTO producto (imagen_producto,nombre_producto,precio) VALUES (?,?,?);";
        try {
            con = cn.getConexion();
            pst = con.prepareStatement(sql);
            pst.setBlob(1, pro.getImagen_producto());
            pst.setString(2, pro.getNombre_producto());
            pst.setInt(3, pro.getPrecio());

            if (pst.executeUpdate() == 1) {
                System.out.println("exito");
            } else {
                System.out.println("error");
            }

        } catch (SQLException e) {
            System.err.println("Error" + e);
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

    }

}
