<%@page import="java.util.Iterator"%>
<%@page import="org.modelos.Departamentos"%>
<%@page import="java.util.List"%>
<%@page import="org.dao.DaoDepartamentos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../../plantilla.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Departamentos</title>
    </head>
    <body>
        <div class="container">            
            <h1>Departamentos</h1>
            <a class="btn btn-success" href="ControllerLibro?accion=nuevo"  > Agregar Nuevo</a>
            <br><br>
                <table border="1" width="1" cellspacing="1" class="table table-bordered">
                    <thead>
                        <tr>
                            <th class="text-center">Id</th>
                            <th class="text-center">Departamento</th>
                            <th class="text-center">Acciones</th>
                        </tr>
                    </thead>
                    <%
                        DaoDepartamentos daoDepartamentos = new  DaoDepartamentos();
                        List<Departamentos> lstDepartamentos = daoDepartamentos.listar();
                        Iterator<Departamentos> iteratorDepartamentos = lstDepartamentos.iterator();
                        Departamentos departamentos = null;
                        while (iteratorDepartamentos.hasNext()){
                            departamentos = iteratorDepartamentos.next(); 
                    %>                     
                    <tbody>
                        <tr>
                            <td class="text-center"><%=departamentos.getIdDepartamento() %></td>
                            <td class="text-center"><%=departamentos.getDepartamento() %></td>
                            <td class="text-center">                                
                                <a class="btn btn-warning" href="ControllerEditorial?accion=editar&id=<%=departamentos.getIdDepartamento() %>">Editar</a>
                                <a class="btn btn-danger" href="ControllerEditorial?accion=delete&id=<%=departamentos.getIdDepartamento() %>">Eliminar</a>
                            </td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
        </div>
    </body>
</html>
