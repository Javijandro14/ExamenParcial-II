<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../../plantilla.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Libro</title>
    </head>
    <body>
        <div class="container">            
            <h1>Libro</h1>
            <a class="btn btn-success" href="ControllerLibro?accion=nuevo"  > Agregar Nuevo</a>
                <table border="1" width="1" cellspacing="1" class="table table-bordered">
                    <thead>
                        <tr>
                            <th class="text-center">Id</th>
                            <th class="text-center">Acciones</th>
                        </tr>
                    </thead>
                    <%                        
                                            
                    %>                     
                    <tbody>
                        <tr>
                            <td class="text-center"><% %></td>
                            <td class="text-center">                                
                                <a href="ControllerEditorial?accion=editar&id=<% %>">Editar</a>
                                <a href="ControllerEditorial?accion=delete&id=<% %>">Eliminar</a>
                            </td>
                        </tr>
                        <% %>
                    </tbody>
                </table>
        </div>
    </body>
</html>
