<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../../plantilla.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">            
            <h1>Detalle Pedido</h1>
            <a class="btn btn-success" href="ControllerLibro?accion=nuevo"  > Agregar Nuevo</a>
            <br><br>
                <table border="1" width="1" cellspacing="1" class="table table-bordered">
                    <thead>
                        <tr>
                            <th class="text-center">Id Detalle Pedido</th>
                            <th class="text-center">Id Pedido</th>
                            <th class="text-center">Id Producto</th>
                            <th class="text-center">Cantidad</th>
                            <th class="text-center">Precio</th>
                            <th class="text-center">Total Linea</th>
                            <th class="text-center">Observacion</th>
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
