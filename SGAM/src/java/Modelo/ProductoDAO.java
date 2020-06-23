package Modelo;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

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

        String sql = "SELECT * FROM producto;";

        try {
            con = cn.getConexion();
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();

            while (rs.next()) {

                Producto pro = new Producto();

                pro.setImagen_producto(rs.getBinaryStream(2));
                pro.setNombre_producto(rs.getString(3));
                pro.setPrecio(rs.getInt(4));
                pro.setId_producto(rs.getInt(1));

                lista.add(pro);

            }

        } catch (SQLException e) {
            System.err.println("Error" + e);
        }

        return lista;

    }

    public void consultarImagen(int id_producto, HttpServletResponse response) {

        Conexion cn = new Conexion();

        String sql = "SELECT * FROM producto WHERE id_producto= ?";
        InputStream inputStream = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferesInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;
        response.setContentType("image/*");

        try {
            outputStream = response.getOutputStream();
            con = cn.getConexion();
            pst = con.prepareStatement(sql);
            pst.setInt(1, id_producto);
            rs = pst.executeQuery();
            if (rs.next()) {

                inputStream = rs.getBinaryStream("imagen_producto");
            }

            bufferesInputStream = new BufferedInputStream(inputStream);
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            int i = 0;
            while ((i = bufferesInputStream.read()) != -1) {
                bufferedOutputStream.write(i);
            }
        } catch (Exception e) {
        }

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

    //Metodo para actualizar productos
    public void actualizarProducto(int id_producto, Producto p) {

        Conexion cn = new Conexion();
        String sql = "UPDATE producto SET imagen_producto= ?, nombre_producto= ?, precio= ? WHERE id_producto= ?";

        try {
            con = cn.getConexion();
            pst = con.prepareStatement(sql);
            pst.setBlob(1, p.getImagen_producto());
            pst.setString(2, p.getNombre_producto());
            pst.setInt(3, p.getPrecio());
            pst.setInt(4, id_producto);

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

    //Metodo para eliminar producto
    public void eliminarProducto(int id_producto) {

        try {

            String consulta = "DELETE FROM producto WHERE id_producto= ?;";
            pst = getConexion().prepareStatement(consulta);
            pst.setInt(1, id_producto);

            if (pst.executeUpdate() == 1) {
                System.out.println("exito");
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

    }

    //Metodo para consultar y porteriormente agregar al carrito
    public Producto consultarId(int id_producto) {

        Conexion cn = new Conexion();
        String sql = "SELECT * FROM producto WHERE id_producto=" + id_producto;
        Producto pro = new Producto();
        try {
            con = cn.getConexion();
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            
            while(rs.next()){
                pro.setId_producto(rs.getInt(1));
                pro.setImagen_producto(rs.getBinaryStream(2));
                pro.setNombre_producto(rs.getString(3));
                pro.setPrecio(rs.getInt(4));
                
            }
        } catch (SQLException e) {
        }

        return pro;
    }

    public static void main(String[] args) {
        ProductoDAO pdao = new ProductoDAO();
        pdao.consultarProducto();
    }

}
