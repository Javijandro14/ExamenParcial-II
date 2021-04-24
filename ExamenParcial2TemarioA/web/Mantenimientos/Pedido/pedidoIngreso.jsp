<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="servicios.VarDolar"%>
<%@page import="servicios.TipoCambioSoap"%>
<%@page import="servicios.TipoCambio"%>
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
                        DaoMunicipio daoMunicipio = new DaoMunicipio();
                        List<Municipio> lstMunicipio = daoMunicipio.listar();
                        Iterator<Municipio> iteratorMunicipio = lstMunicipio.iterator();
                        Municipio municipio = null;
                        DaoDepartamentos daoDepartamentos = new DaoDepartamentos();
                        List<Departamentos> lstDepartamentos = daoDepartamentos.listar();
                        Iterator<Departamentos> iteratorDepartamentos = lstDepartamentos.iterator();
                        Departamentos departamentos = null;
                        DaoProducto daoProducto = new DaoProducto();
                        List<Producto> lstProducto = daoProducto.listar();
                        Iterator<Producto> iteratorProducto = lstProducto.iterator();
                        Producto producto = null;
                    %>
                    <label>Cliente</label><br>
                    <select>
                        <%                            while (iteratorClientes.hasNext()) {
                                clientes = iteratorClientes.next();
                        %>
                        <option name="nit" value="<%=clientes.getNit()%>"><%=clientes.getNombre() + " " + clientes.getApellido() + " " + clientes.getNit()%></option>
                        <%
                            }
                        %>
                    </select>
                    <button id="accion" name="accion" value="buscarCliente" class="btn btn-success" type="submit">Buscar</button>
                    <br><br>
                    
                    <label>Observacion</label>
                    <select multiple="multiple">
                        <%
                            while (iteratorProducto.hasNext()) {
                                producto = iteratorProducto.next();
                        %>
                        <option value="<%=producto.getIdProducto()%>"><%=producto.getProducto()%> Q<%=producto.getPrecio()%></option>
                        <%}%>
                    </select>
                    
                    <label>Departamento</label>
                    <select>
                        <%
                            while (iteratorDepartamentos.hasNext()) {
                                departamentos = iteratorDepartamentos.next();
                        %>
                        <option value="<%=departamentos.getIdDepartamento()%>"><%=departamentos.getDepartamento()%></option>
                        <%}%>
                    </select>
                    <label>Municipio</label>
                    <select>
                        <%
                            while (iteratorMunicipio.hasNext()) {
                                municipio = iteratorMunicipio.next();
                        %>
                        <option value="<%=municipio.getIdMunicipio()%>"><%=municipio.getMunicipio()%></option>
                        <%}%>
                    </select>
                    <%
                        TipoCambio tc = new TipoCambio();
                        TipoCambioSoap tcs = tc.getTipoCambioSoap();
                        List<VarDolar> varDolar = tcs.tipoCambioDia().getCambioDolar().getVarDolar();
                        Iterator<VarDolar> iterVarDolar = varDolar.iterator();
                        VarDolar mivd = null;
                        iterVarDolar.hasNext();
                        mivd = iterVarDolar.next();
                    %>
                    <label>Cantidad en quetzales por un dolar: <%=mivd.getReferencia()%></label>
                </div>
                </body>
                </html>
