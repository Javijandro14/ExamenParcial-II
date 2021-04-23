<%@page import="org.modelos.Producto"%>
<%@page import="org.dao.DaoProducto"%>
<%@page import="org.modelos.Departamentos"%>
<%@page import="org.dao.DaoDepartamentos"%>
<%@page import="org.dao.DaoMunicipio"%>
<%@page import="org.modelos.Municipio"%>
<%@page import="org.dao.DaoClientes"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.modelos.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../../plantilla.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingreso de Pedido</title>
    </head>
    <body>
        <div class="container">            
            <h1>Ingreso de nuevo Pedido</h1>
            <form id="form-work" name="form-work" action="ControllerClientes" method="get">
                <div class="form-group" >
                    <%
                        DaoClientes daoClientes = new DaoClientes();
                        List<Clientes> lstClientes = daoClientes.listar();
                        Iterator<Clientes> iteratorClientes = lstClientes.iterator();
                        Clientes clientes = null;
                        DaoMunicipio daoMunicipio = new  DaoMunicipio();
                        List<Municipio> lstMunicipio = daoMunicipio.listar();
                        Iterator<Municipio> iteratorMunicipio = lstMunicipio.iterator();
                        Municipio municipio = null;
                        DaoDepartamentos daoDepartamentos = new  DaoDepartamentos();
                        List<Departamentos> lstDepartamentos = daoDepartamentos.listar();
                        Iterator<Departamentos> iteratorDepartamentos = lstDepartamentos.iterator();
                        Departamentos departamentos = null;
                        DaoProducto daoProducto = new  DaoProducto();
                        List<Producto> lstProducto = daoProducto.listar();
                        Iterator<Producto> iteratorProducto = lstProducto.iterator();
                        Producto producto = null;
                        
                        
                        
                    %>
                    <label>Cliente</label><br>
                    
                    <select>
                        <%
                            while (iteratorClientes.hasNext()) {
                                clientes = iteratorClientes.next();
                        %>
                        <option value="<%=clientes.getIdCliente()%>"><%=clientes.getNombre()+" "+clientes.getApellido()%></option>
                        <%
                            }
                        %>
                    </select>
                    <br><br>
                    <label>Observacion</label>
                    <select>">
                        <%
                            while (iteratorProducto.hasNext()){
                            producto = iteratorProducto.next();  
                        %>
                        <option value="<%=producto.getIdProducto()%>"><%=producto.getProducto()%></option>
                        <%}%>
                    </select>
                    <label value=""><%=producto.getIdProducto()%></label>
                    <label>Departamento</label>
                    <select>
                        <%
                            while (iteratorDepartamentos.hasNext()){
                            departamentos = iteratorDepartamentos.next();  
                        %>
                        <option value="<%=departamentos.getIdDepartamento()%>"><%=departamentos.getDepartamento()%></option>
                        <%}%>
                    </select>
                    <label>Municipio</label>
                    <select>
                        <%
                            while (iteratorMunicipio.hasNext()){
                            municipio = iteratorMunicipio.next();  
                        %>
                        <option value="<%=municipio.getIdMunicipio()%>"><%=municipio.getMunicipio()%></option>
                        <%}%>
                    </select>
                </div>
                </body>
                </html>
