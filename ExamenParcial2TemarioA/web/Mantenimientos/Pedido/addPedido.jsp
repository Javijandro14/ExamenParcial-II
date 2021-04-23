<%-- 
    Document   : addPedido
    Created on : Apr 21, 2021, 3:55:55 PM
    Author     : family.user
--%>

<%@page import="java.util.Iterator"%>
<%@page import="org.models.Municipio"%>
<%@page import="org.models.Deptos"%>
<%@page import="java.util.List"%>
<%@page import="org.dao.DaoMuni"%>
<%@page import="org.dao.DaoDepto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../../principal.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <title>Nuevo Pedido</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-4">
            <div class="card-body">
                <form id="form-work" class="" name="form-work" action="ControllerPedido" method="get">
                    <%
                       DaoDepto daoDepto = new DaoDepto();
                       DaoMuni  daoMuni = new DaoMuni();
                       List<Deptos> lstDepto = daoDepto.listar();
                       List<Municipio> lstMuni = daoMuni.listar();
                       Iterator<Deptos> iteratorDepto = lstDepto.iterator();
                       Iterator<Municipio> iteratorMuni = lstMuni.iterator();
                       Deptos depto = new Deptos();
                       Municipio muni = new Municipio();
                    %>
                    <div>
                        <label for="departamento" class="control-label">Departamento</label>
                        <select name="depto" id="depto" class="form-control">
                            <% while (iteratorDepto.hasNext()){
                                depto = iteratorDepto.next();  %> 
                             <option value=<%= depto.getIdDepto() %><%= depto.getNombre() %></option>
                            <%}%>
                        </select>
                    </div>
                    <div>
                        <label for="municipio" class="control-label">Municipio</label>
                        <select name="muni" id="muni" class="form-control">                            
                            <% while (iteratorMuni.hasNext()){
                                muni = iteratorMuni.next();  %> 
                             <option value=<%= muni.getIdMuni()%><%= muni.getMuni()%></option>
                            <%}%>
                        </select>
                    </div>
<!--                    <div class="form-group">
                        <label>Dni</label>
                        <input type="text" value="${empleado.getDni()}" name="txtDni" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Nombre</label>
                        <input type="text" value="${empleado.getNom()}" name="txtNombres" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Telefono</label>
                        <input type="text" value="${empleado.getTel()}" name="txtTel" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Estado</label>
                        <input type="text" value="${empleado.getEstado()}" name="txtEstado" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Usuario</label>
                        <input type="text" value="${empleado.getUser()}" name="txtUser" class="form-control">
                    </div>-->
                    <br><br>
                    <!--<input type="submit" name="accion" value="Agregar" class="btn btn-info">-->
                    <!--<input type="submit" name="accion" value="Actualizar" class="btn btn-success">-->
                </form>
            </div>            
        </div>
            <div class="col-sm-8">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <td>ID</td>
                        <th>DNI</th>
                        <th>NOMBRES</th>
                        <th>TELEFONO</th>
                        <th>ESTADO</th>
                        <th>USER</th>
                        <th>ACCIONES</th>
                    </tr>
                </thead>
                <tbody>
<!--                    <c:forEach var="em" items="${empleados}">
                    <tr>
                        <td>${em.getId()}</td>
                        <td>${em.getDni()}</td>
                        <td>${em.getNom()}</td>
                        <td>${em.getTel()}</td>
                        <td>${em.getEstado()}</td>
                        <td>${em.getUser()}</td>
                        <td>
                            <a class="btn btn-warning" href="Controlador?menu=Empleado&accion=Editar&id=${em.getId()}">Editar</a>
                            <a class="btn btn-danger" href="Controlador?menu=Empleado&accion=Delete&id=${em.getId()}">Delete</a>
                        </td>
                    </tr>
                    </c:forEach>-->
                </tbody>
            </table>

        </div>
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    </body>
</html>
