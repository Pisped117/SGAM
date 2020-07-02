package Contrlador;

import Modelo.Alquiler;
import Modelo.AlquilerDAO;
import Modelo.Carrito;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Andres Alvarez
 */
public class AlquilerGenerar extends HttpServlet {

    AlquilerDAO adao = new AlquilerDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            int precio_alquiler = Integer.parseInt(request.getParameter("precio_alquiler"));
            String fecha_entrega = request.getParameter("fecha_entrega");
            String fecha_devolucion = request.getParameter("fecha_devolucion");
            String numero_documento = request.getParameter("numero_documento");
            int id_rol = 3;

            HttpSession sesion = request.getSession(true);
            ArrayList<Carrito> lista = sesion.getAttribute("carrito") == null ? null : (ArrayList) sesion.getAttribute("carrito");

            Alquiler alquiler = new Alquiler(precio_alquiler, fecha_entrega, fecha_devolucion, numero_documento, id_rol, lista);

            int codigo_alquiler = adao.generarAlquiler(alquiler);

            if (codigo_alquiler != 0) {              
                if (lista.size() >= 6) {                   
                    adao.aplicarBeneficio(codigo_alquiler, 1);
                    adao.aplicarBeneficio(codigo_alquiler, 2);
                }else if(precio_alquiler > 4000000){
                    adao.aplicarBeneficio(codigo_alquiler, 3);
                    adao.aplicarBeneficio(codigo_alquiler, 4);
                }
                sesion.setAttribute("carrito", null);
                response.sendRedirect("menuCliente.jsp");
            } else {
                response.sendRedirect("carrito.jsp");
            }

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
