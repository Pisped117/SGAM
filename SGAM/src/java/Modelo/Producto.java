
package Modelo;

import java.io.InputStream;

/**
 *
 * @author Andres Alvarez
 */
public class Producto {
    
    int id_producto;
    InputStream imagen_producto;
    String nombre_producto;
    int precio;

    public Producto() {
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public InputStream getImagen_producto() {
        return imagen_producto;
    }

    public void setImagen_producto(InputStream imagen_producto) {
        this.imagen_producto = imagen_producto;
    }

    public String getNombre_producto() {
        return nombre_producto;
    }

    public void setNombre_producto(String nombre_producto) {
        this.nombre_producto = nombre_producto;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }
    
    
    
    
    
    
}
