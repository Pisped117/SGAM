
package Modelo;

/**
 *
 * @author Andres Alvarez
 */
public class Carrito {
    
   
    private int id_producto;
    private int cantidad;

    public Carrito(int id_producto, int cantidad) {
        this.id_producto = id_producto;
        this.cantidad = cantidad;
    }



    /**
     * @return the id_producto
     */
    public int getId_producto() {
        return id_producto;
    }

    /**
     * @param id_producto the id_producto to set
     */
    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    /**
     * @return the cantidad
     */
    public int getCantidad() {
        return cantidad;
    }

    /**
     * @param cantidad the cantidad to set
     */
    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }


    
    
    
    
    
}
