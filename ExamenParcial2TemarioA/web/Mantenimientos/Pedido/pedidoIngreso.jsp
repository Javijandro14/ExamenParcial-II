<%@page import="org.modelos.Departamentos"%>
<%@page import="org.modelos.Municipio"%>
<%@page import="org.dao.DaoMunicipio"%>
<%@page import="org.dao.DaoDepartamentos"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../../plantilla.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pedidos</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-4">
                <div class="card-body">
                    <form id="form-work" class="" name="form-work" action="ControllerPedido" method="get">
                        <%
                            int deptSeleccionado=0;
                            DaoDepartamentos daoDepartamentos = new DaoDepartamentos();
                            DaoMunicipio daoMunicipio = new DaoMunicipio();
                            List<Departamentos> lstDepartamentos = daoDepartamentos.listar();
                            List<Municipio> lstMunicipio = daoMunicipio.listar();
                            Iterator<Departamentos> iteratorDepartamentos = lstDepartamentos.iterator();
                            Iterator<Municipio> iteratorMunicipio = lstMunicipio.iterator();
                            Departamentos departamentos = new Departamentos();
                            Municipio municipio = new Municipio();
                        %>
                        <div>
                            <label for="departamento" class="control-label">Departamento</label>
                            <select name="depto" id="depto" class="form-control" onchange="<%= deptSeleccionado= departamentos.getIdDepartamento()%>">
                                <% while (iteratorDepartamentos.hasNext()) {
                                        departamentos = iteratorDepartamentos.next();%> 
                                <option value=<%= departamentos.getIdDepartamento()%>><%= departamentos.getDepartamento()%></option>
                                <%}%>
                            </select>
                            <label for="municipio" class="control-label">Municipio</label>
                            <select name="muni" id="muni" onchange="<%=departamentos.getIdDepartamento()%>" class="form-control">                            
                                <% while (iteratorMunicipio.hasNext()) {
                                        municipio = iteratorMunicipio.next();
                                        if (departamentos.getIdDepartamento() == municipio.getIdDepartamento()) {
                                %> 
                                <option value="${municipio.getIdMunicipio()}"><%= municipio.getMunicipio()%></option>
                                <%}
                                    }%>

                            </select>
                        </div>
                        <div class="form-group">
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
                        </div>
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
                    <c:forEach var="em" items="${empleados}">
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
                    </c:forEach>
                    </tbody>
                </table>

            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    </body>
</html>