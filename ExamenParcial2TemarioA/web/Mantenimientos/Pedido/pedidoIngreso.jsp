<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="serviciosWeb.VarDolar"%>
<%@page import="serviciosWeb.TipoCambioSoap"%>
<%@page import="serviciosWeb.TipoCambio"%>
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
            <form id="form-work" name="form-work" action="ControllerPedido" method="get">
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
                        <%
                            while (iteratorClientes.hasNext()) {
                                clientes = iteratorClientes.next();
                        %>
                        <option name="nit" value="<%=clientes.getNit()%>"><%=clientes.getNit()%></option>
                        <%
                            }
                        %>
                    </select>
                    <label>Nombre Apellido </label> &nbsp; <label> Telefono </label> &nbsp; <label> Direccion</label>
                    <br><br>
                    <label>Observacion</label><br>
                    <select>
                        <%
                            while (iteratorProducto.hasNext()) {
                                producto = iteratorProducto.next();
                        %>
                        <option value="<%=producto.getIdProducto()%>"><%=producto.getProducto()%> Q<%=producto.getPrecio()%></option>
                        <%}%>
                    </select>
                    <br><br>
                    <table border="1" width="1" cellspacing="1">
                        <thead>
                            <tr>
                                <th class="text-center">No</th>
                                <th class="text-center">Producto</th>
                                <th class="text-center">Precio</th>
                                <th class="text-center">Cantidad</th>
                                <th class="text-center">Subtotal Q</th>
                                <th class="text-center">Subtotal $</th>
                            </tr>
                        </thead>             
                        <tbody>
                            <tr>
                                <td class="text-center">1</td>
                                <td class="text-center">Producto 1</td>
                                <td class="text-center">Q0.00</td>
                                <td class="text-center">10</td>
                                <td class="text-center">Q0.00</td>
                                <td class="text-center">$0.00</td>
                        </tbody>
                    </table>
                    <br><br>
                    <label>Departamento</label><br>
                    <select>
                        <%
                            while (iteratorDepartamentos.hasNext()) {
                                departamentos = iteratorDepartamentos.next();
                        %>
                        <option value="<%=departamentos.getIdDepartamento()%>"><%=departamentos.getDepartamento()%></option>
                        <%}%>
                    </select><br><br>
                    <label>Municipio</label><br>
                    <select>
                        <%
                            while (iteratorMunicipio.hasNext()) {
                                municipio = iteratorMunicipio.next();
                        %>
                        <option value="<%=municipio.getIdMunicipio()%>"><%=municipio.getMunicipio()%></option>
                        <%}%>
                    </select><br><br>
                    <%
                        TipoCambio tc = new TipoCambio();
                        TipoCambioSoap tcs = tc.getTipoCambioSoap();
                        List<VarDolar> varDolar = tcs.tipoCambioDia().getCambioDolar().getVarDolar();
                        Iterator<VarDolar> iterVarDolar = varDolar.iterator();
                        VarDolar mivd = null;
                        iterVarDolar.hasNext();
                        mivd = iterVarDolar.next();
                    %>
                    <label>Tipo Cambio(Q a $):<br><strong> Q<%= mivd.getReferencia()%></strong></label>
                    <br>
                    <label>Total (en Q):<br> Q0.00</label><br>
                    <label>Total (en $):<br> $0.00</label><br><br>
                    <div class="col-md-3">
                        <button id="accion" name="accion" value="create" class="btn btn-success btn-lg" type="submit">Aceptar</button>                    
                    </div>
                </div>
            </form>
    </body>
</html>
