
package Modelo;

/**
 *
 * @author Andres Alvarez
 */
public class Carrito {
    
    int item;
    int id_producto;
    String nombre;
    int precio_compra;
    int cantidad;
    int sub_total;

    public Carrito() {
    }

    public Carrito(int item, int id_producto, String nombre, int precio_compra, int cantidad, int sub_total) {
        this.item = item;
        this.id_producto = id_producto;
        this.nombre = nombre;
        this.precio_compra = precio_compra;
        this.cantidad = cantidad;
        this.sub_total = sub_total;
    }

    public int getItem() {
        return item;
    }

    public void setItem(int item) {
        this.item = item;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getPrecio_compra() {
        return precio_compra;
    }

    public void setPrecio_compra(int precio_compra) {
        this.precio_compra = precio_compra;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getSub_total() {
        return sub_total;
    }

    public void setSub_total(int sub_total) {
        this.sub_total = sub_total;
    }
    
    
    
    
    
    
}
