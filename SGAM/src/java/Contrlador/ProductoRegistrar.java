package Contrlador;

import Modelo.Producto;
import Modelo.ProductoDAO;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Andres Alvarez
 */

@MultipartConfig
public class ProductoRegistrar extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            Producto p = new Producto();
            ProductoDAO pdao = new ProductoDAO();
            
            String nombre_producto = request.getParameter("nombre_producto");
            int precio_producto = Integer.parseInt(request.getParameter("precio_producto"));
            Part part = request.getPart("imagen_producto");
            InputStream inputStream = part.getInputStream();
            
            p.setNombre_producto(nombre_producto);
            p.setPrecio(precio_producto);
            p.setImagen_producto(inputStream);
            
            pdao.registrarProducto(p);
            
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
    
}
