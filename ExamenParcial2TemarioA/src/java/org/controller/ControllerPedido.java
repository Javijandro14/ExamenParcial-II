
package org.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.dao.DaoPedido;
import org.modelos.Pedido;

@WebServlet(name = "ControllerPedido", urlPatterns = {"/ControllerPedido"})
public class ControllerPedido extends HttpServlet {

    String listar="Mantenimientos/Pedido/pedidoConsulta.jsp";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControllerPedido</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControllerPedido at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         //processRequest(request, response);
        String acceso="";        
        String action = request.getParameter("accion");        
        
        Pedido pedido = new Pedido();
        DaoPedido daoPedido = new DaoPedido();
        
        switch (action){
            case "read":
                acceso = listar;
            break;
            
            case "busqueda" :
                acceso = "Mantenimientos/Pedido/pedidoBusqueda.jsp";
            break;
            
           /* case "consumoWS" :
                int idPedido = Integer.parseInt(request.getParameter("idPedido"));
                List<org.servicios.Pedido> lstEdit = getPedido(idPedido);
                for (org.servicios.Pedido edit : lstEdit){
                    System.out.println("Codigo Pedido: " + edit.getIdPedido());
                    System.out.println("Descripcion: " + edit.getDescripcion());
                    System.out.println("Direccion: " + edit.getDireccion());
                    System.out.println("Telefono: " + edit.getTelefono());
                }
            break;*/
            }
        RequestDispatcher vista = request.getRequestDispatcher(acceso); //invoca de modo directo un recurso web
        vista.forward(request, response);
    }

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
