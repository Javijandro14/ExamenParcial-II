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

    String listar = "Mantenimientos/Clientes/clientesConsulta.jsp";
    String nuevo= "Mantenimientos/Clientes/clientesIngreso.jsp";

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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        String acceso = "";
        String action = request.getParameter("accion");

        Clientes clientes = new Clientes();
        DaoClientes daoClientes = new DaoClientes();

        switch (action) {
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
            case "consumoWS":
            /*String nit = request.getParameter("nit");
                List<org.servicios.ServicioClientes> lstClientes = getClientes(nit);
                for (org.modelos.Clientes cliente : lstClientes.get()){
                    System.out.println("Codigo Clientes: " + cliente.getIdClientes());
                    System.out.println("Descripcion: " + cliente.getDescripcion());
                    System.out.println("Direccion: " + cliente.getDireccion());
                    System.out.println("Telefono: " + cliente.getTelefono());
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

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
