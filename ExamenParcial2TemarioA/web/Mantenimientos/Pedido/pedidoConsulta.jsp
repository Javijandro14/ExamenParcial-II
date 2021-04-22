<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../../plantilla.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pedidos</title>
    </head>
    <body>
        <div class="container">            
            <h1>Pedidos</h1>
            <a class="btn btn-success" href="ControllerLibro?accion=nuevo"  > Agregar Nuevo</a>
            <br><br>
                <table border="1" width="1" cellspacing="1" class="table table-bordered">
                    <thead>
                        <tr>
                            <th class="text-center">Id Pedido</th>
                            <th class="text-center">Cliente</th>
                            <th class="text-center">Observacion</th>
                            <th class="text-center">Departamento</th>
                            <th class="text-center">Municipio</th>
                            <th class="text-center">Estado</th>
                            <th class="text-center">Total(en Q)</th>
                            <th class="text-center">Total(en $)</th>
                            <th class="text-center">Acciones</th>
                        </tr>
                    </thead>
                    <%                        
                                            
                    %>                     
                    <tbody>
                        <tr>
                            <td class="text-center"><% %></td>
                            <td class="text-center"><% %></td>
                            <td class="text-center"><% %></td>
                            <td class="text-center"><% %></td>
                            <td class="text-center"><% %></td>
                            <td class="text-center"><% %></td>
                            <td class="text-center"><% %></td>
                            <td class="text-center"><% %></td>
                            <td class="text-center">                                
                                <a class="btn btn-warning" href="ControllerEditorial?accion=editar&id=<% %>">Editar</a>
                                <a class="btn btn-danger" href="ControllerEditorial?accion=delete&id=<% %>">Eliminar</a>
                            </td>
                        </tr>
                        <% %>
                    </tbody>
                </table>
        </div>
    </body>
</html>
