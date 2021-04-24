package org.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.dao.DaoDetallePedido;
import org.modelos.DetallePedido;

@WebServlet(name = "ControllerDetallePedido", urlPatterns = {"/ControllerDetallePedido"})
public class ControllerDetallePedido extends HttpServlet {

    String listar = "Mantenimientos/Detalle_Pedido/detallePedidoConsulta.jsp";
    String buscar = "Mantenimientos/Detalle_Pedido/detallePedidoBusqueda.jsp";
    String nuevo= "Mantenimientos/Detalle_Pedido/detallePedidoIngreso.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControllerDetallePedido</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControllerDetallePedido at " + request.getContextPath() + "</h1>");
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
        
        DetallePedido detallePedido = new DetallePedido();
        DaoDetallePedido daoDetallePedido = new DaoDetallePedido();
        
        switch (action){
            case "read":
                acceso = listar;
                break;
            case "nuevo":
                acceso=nuevo;
                break;
            case "agregar":
                acceso=listar;
                break;
            case "editar":
                break;
            case "modificar":
                break;
            case "consumoWS" :
                /*int idDetallePedido = Integer.parseInt(request.getParameter("idDetallePedido"));
                List<org.servicios.DetallePedido> lstEdit = getDetallePedido(idDetallePedido);
                for (org.servicios.DetallePedido edit : lstEdit){
                    System.out.println("Codigo DetallePedido: " + edit.getIdDetallePedido());
                    System.out.println("Descripcion: " + edit.getDescripcion());
                    System.out.println("Direccion: " + edit.getDireccion());
                    System.out.println("Telefono: " + edit.getTelefono());
                }*/
            break;
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
