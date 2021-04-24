package org.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.dao.DaoMunicipio;
import org.modelos.Municipio;

@WebServlet(name = "ControllerMunicipio", urlPatterns = {"/ControllerMunicipio"})
public class ControllerMunicipio extends HttpServlet {

    String listar = "Mantenimientos/Municipio/municipioConsulta.jsp";
    String nuevo = "Mantenimientos/Municipio/municipioIngreso.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControllerMunicipio</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControllerMunicipio at " + request.getContextPath() + "</h1>");
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

        Municipio municipio = new Municipio();
        DaoMunicipio daoMunicipio = new DaoMunicipio();

        switch (action) {
            case "read":
                acceso = listar;
                break;
            case "nuevo":
                acceso = nuevo;
                break;
            case "agregar":
                acceso = listar;
                break;
            case "editar":
                break;
            case "modificar":
                break;
            case "consumoWS":
                /*int idMunicipio = Integer.parseInt(request.getParameter("idMunicipio"));
                List<org.servicios.Municipio> lstEdit = getMunicipio(idMunicipio);
                for (org.servicios.Municipio edit : lstEdit){
                    System.out.println("Codigo Municipio: " + edit.getIdMunicipio());
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

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
