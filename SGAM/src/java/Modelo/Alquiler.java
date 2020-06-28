
package Modelo;

import java.util.List;

/**
 *
 * @author Andres Alvarez
 */
public class Alquiler {
    
    private int precio_alquiler;
    private String fecha_entrega;
    private String fecha_devolucion;
    private String numero_documento;
    private int id_rol;

    private List<Carrito>productos;
    
    public Alquiler() {
    }

    public Alquiler(int precio_alquiler, String fecha_entrega, String fecha_devolucion, String numero_documento, int id_rol, List<Carrito> productos) {
        this.precio_alquiler = precio_alquiler;
        this.fecha_entrega = fecha_entrega;
        this.fecha_devolucion = fecha_devolucion;
        this.numero_documento = numero_documento;
        this.id_rol = id_rol;
        this.productos = productos;
    }

    public int getPrecio_alquiler() {
        return precio_alquiler;
    }

    public void setPrecio_alquiler(int precio_alquiler) {
        this.precio_alquiler = precio_alquiler;
    }

    public String getFecha_entrega() {
        return fecha_entrega;
    }

    public void setFecha_entrega(String fecha_entrega) {
        this.fecha_entrega = fecha_entrega;
    }

    public String getFecha_devolucion() {
        return fecha_devolucion;
    }

    public void setFecha_devolucion(String fecha_devolucion) {
        this.fecha_devolucion = fecha_devolucion;
    }

    public String getNumero_documento() {
        return numero_documento;
    }

    public void setNumero_documento(String numero_documento) {
        this.numero_documento = numero_documento;
    }

    public int getId_rol() {
        return id_rol;
    }

    public void setId_rol(int id_rol) {
        this.id_rol = id_rol;
    }

    public List<Carrito> getProductos() {
        return productos;
    }

    public void setProductos(List<Carrito> productos) {
        this.productos = productos;
    }
    
    
    
    
}
