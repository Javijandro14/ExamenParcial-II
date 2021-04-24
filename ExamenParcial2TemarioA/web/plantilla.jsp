<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Aplicación Web</title>
        <link href="Styles/Site.css" rel="stylesheet" type="text/css"/>
        <link href="Content/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="Scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
        <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>


    </head>
    <body>
        <form id="Form1" >
            <nav class="navbar navbar-default" role="navigation" >
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>                    
                    </div>

                    <div class="navbar-header" style=" align: center;">
                        <a class="navbar-brand" href="index.jsp">Inicio</a>
                        <ul class="nav navbar-nav">                        
                            <li id="Li2" class="dropdown" >
                                <a href="ControllerClientes?accion=read" id="A2">Clientes</a>
                            <li id="Li2" class="dropdown" >
                                <a href="ControllerDepartamentos?accion=read" id="A2">Departamentos</a>
                            </li>   
                            <li id="Li2" class="dropdown" >
                                <a href="ControllerDetallePedido?accion=read" id="A2">Detalle Pedido</a>
                            </li>   
                            <li id="Li2" class="dropdown" >
                                <a href="ControllerMunicipio?accion=read" id="A2">Municipios</a>
                            </li>
                            <li id="Li2" class="dropdown" >
                                <a href="ControllerPedido?accion=read" id="A2">Pedidos</a>
                            </li>   
                            <li id="Li2" class="dropdown" >
                                <a href="ControllerProducto?accion=read" id="A2">Producto</a>
                            </li>   
                        </ul>  
                </div>
            </nav>
            <div class="container body-content">
                <div style=" float:right;">                    
                </div>
                <footer>
                </footer>
            </div>  
        </form>   

    </body>
</html>

