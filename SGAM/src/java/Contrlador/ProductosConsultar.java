package Contrlador;

import Modelo.Producto;
import Modelo.ProductoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Andres Alvarez
 */
public class ProductosConsultar extends HttpServlet {

    ProductoDAO pdao = new ProductoDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

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
        String accion = request.getParameter("accion");

        switch (accion) {
            case "listar":
                List<Producto> lista = pdao.consultarProducto();
                request.setAttribute("lista_productos", lista);
                request.getRequestDispatcher("consultarProductos.jsp").forward(request, response);

                break;
            default:
                 request.getRequestDispatcher("ProductosConsultar?accion=listar").forward(request, response);
                break;
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
