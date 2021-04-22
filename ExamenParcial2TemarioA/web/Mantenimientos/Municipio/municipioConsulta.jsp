<%@page import="java.util.Iterator"%>
<%@page import="org.modelos.Municipio"%>
<%@page import="java.util.List"%>
<%@page import="org.dao.DaoMunicipio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../../plantilla.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Municipio</title>
    </head>
    <body>
        <div class="container">            
            <h1>Municipio</h1>
            <a class="btn btn-success" href="ControllerLibro?accion=nuevo" > Agregar Nuevo</a>
            <br><br>
                <table border="1" width="1" cellspacing="1" class="table table-bordered">
                    <thead>
                        <tr>
                            <th class="text-center">Id</th>
                            <th class="text-center">Municipio</th>
                            <th class="text-center">Departamento</th>
                            <th class="text-center">Acciones</th>
                        </tr>
                    </thead>
                    <%
                        DaoMunicipio daoMunicipio = new  DaoMunicipio();
                        List<Municipio> lstMunicipio = daoMunicipio.listar();
                        Iterator<Municipio> iteratorMunicipio = lstMunicipio.iterator();
                        Municipio municipio = null;
                        while (iteratorMunicipio.hasNext()){
                            municipio = iteratorMunicipio.next();  
                    %>                     
                    <tbody>
                        <tr>
                            <td class="text-center"><% %></td>
                            <td class="text-center"><% %></td>
                            <td class="text-center"><% %></td>
                            <td class="text-center">                                
                                <a class="btn btn-warning" href="ControllerEditorial?accion=editar&id=<% %>">Editar</a>
                                <a class="btn btn-danger" href="ControllerEditorial?accion=delete&id=<% %>">Eliminar</a>
                            </td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
        </div>
    </body>
</html>
