/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.dao.DaoDepartamentos;
import org.modelos.Departamentos;

/**
 *
 * @author javie
 */
@WebServlet(name = "ControllerDepartamentos", urlPatterns = {"/ControllerDepartamentos"})
public class ControllerDepartamentos extends HttpServlet {

    String listar="Mantenimientos/Departamentos/departamentosConsulta.jsp";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControllerDepartamentos</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControllerDepartamentos at " + request.getContextPath() + "</h1>");
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
        
        Departamentos departamentos = new Departamentos();
        DaoDepartamentos daoDepartamentos = new DaoDepartamentos();
        
        switch (action){
            case "read":
                acceso = listar;
            break;
            
            case "busqueda" :
                acceso = "Mantenimientos/Departamentos/departamentosBusqueda.jsp";
            break;
            
           /* case "consumoWS" :
                int idDepartamentos = Integer.parseInt(request.getParameter("idDepartamentos"));
                List<org.servicios.Departamentos> lstEdit = getDepartamentos(idDepartamentos);
                for (org.servicios.Departamentos edit : lstEdit){
                    System.out.println("Codigo Departamentos: " + edit.getIdDepartamentos());
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
