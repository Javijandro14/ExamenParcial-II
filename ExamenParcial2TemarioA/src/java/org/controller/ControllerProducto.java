
package org.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.dao.DaoProducto;
import org.modelos.Producto;


@WebServlet(name = "ControllerProducto", urlPatterns = {"/ControllerProducto"})
public class ControllerProducto extends HttpServlet {

    String listar="Mantenimientos/Producto/productoConsulta.jsp";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControllerProducto</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControllerProducto at " + request.getContextPath() + "</h1>");
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
        
        Producto producto = new Producto();
        DaoProducto daoProducto = new DaoProducto();
        
        switch (action){
            case "read":
                acceso = listar;
            break;
            
            case "busqueda" :
                acceso = "Mantenimientos/Producto/productoBusqueda.jsp";
            break;
            
           /* case "consumoWS" :
                int idProducto = Integer.parseInt(request.getParameter("idProducto"));
                List<org.servicios.Producto> lstEdit = getProducto(idProducto);
                for (org.servicios.Producto edit : lstEdit){
                    System.out.println("Codigo Producto: " + edit.getIdProducto());
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

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
