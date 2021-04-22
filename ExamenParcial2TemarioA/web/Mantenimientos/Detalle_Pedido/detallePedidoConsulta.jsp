<%@page import="java.util.Iterator"%>
<%@page import="org.modelos.DetallePedido"%>
<%@page import="org.dao.DaoDetallePedido"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../../plantilla.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalle Pedido</title>
    </head>
    <body>
        <div class="container">            
            <h1>Detalle Pedido</h1>
            <a class="btn btn-success" href="ControllerLibro?accion=nuevo"> Agregar Nuevo</a>
            <br><br>
            <table border="1" width="1" cellspacing="1" class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">Id</th>
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
                    DaoDetallePedido daoDetallePedido = new DaoDetallePedido();
                    List<DetallePedido> lstDetallePedido = daoDetallePedido.listar();
                    Iterator<DetallePedido> iteratorDetallePedido = lstDetallePedido.iterator();
                    DetallePedido detallePedido = null;
                    while (iteratorDetallePedido.hasNext()) {
                        detallePedido = iteratorDetallePedido.next();
                %>                     
                <tbody>
                    <tr>
                        <td class="text-center"><%=detallePedido.getIdDetallePedido()%></td>
                        <td class="text-center"><%=detallePedido.getIdPedido()%></td>
                        <td class="text-center"><%=detallePedido.getIdProducto()%></td>
                        <td class="text-center"><%=detallePedido.getCantidad()%></td>
                        <td class="text-center"><%=detallePedido.getPrecio()%></td>
                        <td class="text-center"><%=detallePedido.getTotal()%></td>
                        <td class="text-center"><%=detallePedido.getObservacion()%></td>
                        <td class="text-center">                                
                            <a class="btn btn-warning" href="ControllerEditorial?accion=editar&id=<%=detallePedido.getIdDetallePedido()%>">Editar</a>
                            <a class="btn btn-danger" href="ControllerEditorial?accion=delete&id=<%=detallePedido.getIdDetallePedido()%>">Eliminar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>
