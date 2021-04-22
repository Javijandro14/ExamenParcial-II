<%@page import="java.util.Iterator"%>
<%@page import="org.modelos.Producto"%>
<%@page import="java.util.List"%>
<%@page import="org.dao.DaoProducto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../../plantilla.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
    </head>
    <body>
        <div class="container">            
            <h1>Productos</h1>
            <a class="btn btn-success" href="ControllerLibro?accion=nuevo"  > Agregar Nuevo</a>
            <br><br>
                <table border="1" width="1" cellspacing="1" class="table table-bordered">
                    <thead>
                        <tr>
                            <th class="text-center">Id</th>
                            <th class="text-center">Producto</th>
                            <th class="text-center">Precio</th>
                            <th class="text-center">Existencia</th>
                            <th class="text-center">Estado</th>
                            <th class="text-center">Acciones</th>
                        </tr>
                    </thead>
                    <%
                        DaoProducto daoProducto = new  DaoProducto();
                        List<Producto> lstProducto = daoProducto.listar();
                        Iterator<Producto> iteratorProducto = lstProducto.iterator();
                        Producto producto = null;
                        while (iteratorProducto.hasNext()){
                            producto = iteratorProducto.next();  
                    %>                     
                    <tbody>
                        <tr>
                            <td class="text-center"><%=producto.getIdProducto()%></td>
                            <td class="text-center"><%=producto.getProducto()%></td>
                            <td class="text-center"><%=producto.getPrecio() %></td>
                            <td class="text-center"><%=producto.getExistencia() %></td>
                            <td class="text-center"><%=producto.getEstado() %></td>
                            <td class="text-center">                                
                                <a class="btn btn-warning" href="ControllerEditorial?accion=editar&id=<%=producto.getIdProducto() %>">Editar</a>
                                <a class="btn btn-danger" href="ControllerEditorial?accion=delete&id=<%=producto.getIdProducto()%>">Eliminar</a>
                            </td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
        </div>
    </body>
</html>
