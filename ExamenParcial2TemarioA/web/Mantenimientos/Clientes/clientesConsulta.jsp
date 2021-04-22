<%@page import="java.util.Iterator"%>
<%@page import="org.modelos.Clientes"%>
<%@page import="java.util.List"%>
<%@page import="org.dao.DaoClientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../../plantilla.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
    </head>
    <body>
        <div class="container">            
            <h1>Clientes</h1>
            <a class="btn btn-success" href="ControllerClientes?accion=nuevo"> Agregar Nuevo</a>
            <br><br>
                <table border="1" width="1" cellspacing="1" class="table table-bordered">
                    <thead>
                        <tr>
                            <th class="text-center">Id</th>
                            <th class="text-center">Nombre</th>
                            <th class="text-center">Apellido</th>
                            <th class="text-center">NIT</th>
                            <th class="text-center">Telefono</th>
                            <th class="text-center">Direccion</th>
                            <th class="text-center">Acciones</th>
                        </tr>
                    </thead>
                    <%
                        DaoClientes daoClientes = new  DaoClientes();
                        List<Clientes> lstClientes = daoClientes.listar();
                        Iterator<Clientes> iteratorClientes = lstClientes.iterator();
                        Clientes clientes = null;
                        while (iteratorClientes.hasNext()){
                            clientes = iteratorClientes.next();  
                    %>                     
                    <tbody>
                        <tr>
                            <td class="text-center"><%=clientes.getIdCliente() %></td>
                            <td class="text-center"><%=clientes.getNombre() %></td>
                            <td class="text-center"><%=clientes.getApellido() %></td>
                            <td class="text-center"><%=clientes.getNit() %></td>
                            <td class="text-center"><%=clientes.getTelefono() %></td>
                            <td class="text-center"><%=clientes.getDireccion() %></td>
                            <td class="text-center">                                
                                <a class="btn btn-warning" href="ControllerClientes?accion=editar&id=<%=clientes.getIdCliente() %>">Editar</a>
                                <a class="btn btn-danger" href="ControllerClientes?accion=delete&id=<%=clientes.getIdCliente() %>">Eliminar</a>
                            </td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
        </div>
    </body>
</html>
