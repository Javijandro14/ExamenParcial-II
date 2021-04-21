package org.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.dao.DaoClientes;
import org.modelos.Clientes;

@WebServlet(name = "ControllerClientes", urlPatterns = {"/ControllerClientes"})
public class ControllerClientes extends HttpServlet {

    String listar="Mantenimientos/Clientes/clientesConsulta.jsp";
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControllerClientes</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControllerClientes at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        //processRequest(request, response);
        String acceso="";        
        String action = request.getParameter("accion");        
        
        Clientes clientes = new Clientes();
        DaoClientes daoClientes = new DaoClientes();
        
        switch (action){
            case "read":
                acceso = listar;
            break;
            
            case "busqueda" :
                acceso = "Mantenimientos/Clientes/clientesBusqueda.jsp";
            break;
            
           /* case "consumoWS" :
                int idClientes = Integer.parseInt(request.getParameter("idClientes"));
                List<org.servicios.Clientes> lstEdit = getClientes(idClientes);
                for (org.servicios.Clientes edit : lstEdit){
                    System.out.println("Codigo Clientes: " + edit.getIdClientes());
                    System.out.println("Descripcion: " + edit.getDescripcion());
                    System.out.println("Direccion: " + edit.getDireccion());
                    System.out.println("Telefono: " + edit.getTelefono());
                }
            break;*/
            }
        RequestDispatcher vista = request.getRequestDispatcher(acceso); //invoca de modo directo un recurso web
        vista.forward(request, response);
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
