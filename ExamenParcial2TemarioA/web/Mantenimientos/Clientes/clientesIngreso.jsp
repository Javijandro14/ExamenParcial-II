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
            <h1>Ingreso de nuevo Cliente</h1>
            <form id="form-work" name="form-work" action="ControllerClientes" method="get">
               <div class="form-group" >
                    <div class="col-md-4">
                        <label class="control-label" for ="titulo">Nombre</label>
                        <input name="titulo" class="form-control" placeholder="Ingresar Nombre" type="text">
                    </div>
                    <br><br><br>
                    <div class="col-md-4">
                        <label class="control-label" for ="apellido">Apellido</label>
                        <input name="apellido" class="form-control" placeholder="Apellido" type="text">
                    </div>    
                    <br><br><br>
                    <div class="col-md-4">
                        <label for ="nit" class="control-label">NIT</label>
                        <input name="nit" placeholder="Ingresar NIT" type="text" class="form-control">
                    </div>  
                    <div class="col-md-3">
                        <button id="accion" name="accion" value="create" class="btn btn-success btn-lg btn-block info" type="submit">Crear Cliente</button>                    
                    </div>
                </div>
                
            </form>
        </div>
    </body>
</html>
