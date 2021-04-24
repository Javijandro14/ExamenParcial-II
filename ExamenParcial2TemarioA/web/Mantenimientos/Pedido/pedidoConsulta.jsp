<%@page import="org.dao.DaoPedido"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.modelos.Pedido"%>
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
            <a class="btn btn-success" href="ControllerPedido?accion=nuevo">Agregar Nuevo</a>
            <br><br>
                <table border="1" width="1" cellspacing="1" class="table table-bordered">
                    <thead>
                        <tr>
                            <th class="text-center">Id</th>
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
                        DaoPedido daoPedido = new  DaoPedido();
                        List<Pedido> lstPedido = daoPedido.listar();
                        Iterator<Pedido> iteratorPedido = lstPedido.iterator();
                        Pedido pedido = null;
                        while (iteratorPedido.hasNext()){
                            pedido = iteratorPedido.next();  
                    %>                     
                    <tbody>
                        <tr>
                            <td class="text-center"><%=pedido.getIdPedido()%></td>
                            <td class="text-center"><%=pedido.getCliente()%></td>
                            <td class="text-center"><%=pedido.getObservacion()%></td>
                            <td class="text-center"><%=pedido.getDepartamento()%></td>
                            <td class="text-center"><%=pedido.getMunicipio()%></td>
                            <td class="text-center"><%=pedido.getEstado()%></td>
                            <td class="text-center"><%=pedido.getTotal()%></td>
                            <td class="text-center"><%=pedido.getTotalUsd()%></td>
                            <td class="text-center">                                
                                <a class="btn btn-warning" href="ControllerEditorial?accion=editar&id=<%=pedido.getIdPedido() %>">Editar</a>
                                <a class="btn btn-danger" href="ControllerEditorial?accion=delete&id=<%=pedido.getIdPedido() %>">Eliminar</a>
                            </td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
        </div>
    </body>
</html>
