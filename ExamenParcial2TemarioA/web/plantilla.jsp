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
           <nav class="navbar navbar-default" role="navigation"  >
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>                    
                    </div>

                    <div class="navbar-header">
                           <a class="navbar-brand" href="index.jsp">Inicio</a>
                     </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav">                        
                            <li id="Li2" class="dropdown" >
                                <a href="" class="dropdown-toggle" data-toggle="dropdown"  id="A1">Clientes<b class="caret"></b></a>
                                <ul id="Ul2" class="dropdown-menu" >
                                    <li> 
                                        <a href="ControllerEditorial?accion=read" id="A2">Consulta</a>
                                    </li>
                                    <li> 
                                        <a href="ControllerLibro?accion=read" id="A3">Busqueda</a>
                                    </li>
                                </ul>
                             </li>
                             <li id="Li2" class="dropdown" >
                                <a href="" class="dropdown-toggle" data-toggle="dropdown"  id="A1">Departamentos<b class="caret"></b></a>
                                <ul id="Ul2" class="dropdown-menu" >
                                    <li> 
                                        <a href="ControllerEditorial?accion=read" id="A2">Consulta</a>
                                    </li>
                                    <li> 
                                        <a href="ControllerLibro?accion=read" id="A3">Busqueda</a>
                                    </li>
                                </ul>
                             </li>   
                             <li id="Li2" class="dropdown" >
                                <a href="" class="dropdown-toggle" data-toggle="dropdown"  id="A1">Detalle Pedido<b class="caret"></b></a>
                                <ul id="Ul2" class="dropdown-menu" >
                                    <li> 
                                        <a href="ControllerEditorial?accion=read" id="A2">Consulta</a>
                                    </li>
                                    <li> 
                                        <a href="ControllerLibro?accion=read" id="A3">Busqueda</a>
                                    </li>
                                </ul>
                             </li>   
                             <li id="Li2" class="dropdown" >
                                <a href="" class="dropdown-toggle" data-toggle="dropdown"  id="A1">Municipios<b class="caret"></b></a>
                                <ul id="Ul2" class="dropdown-menu" >
                                    <li> 
                                        <a href="ControllerEditorial?accion=read" id="A2">Consulta</a>
                                    </li>
                                    <li> 
                                        <a href="ControllerLibro?accion=read" id="A3">Busqueda</a>
                                    </li>
                                </ul>
                             </li>
                             <li id="Li2" class="dropdown" >
                                <a href="" class="dropdown-toggle" data-toggle="dropdown"  id="A1">Pedidos<b class="caret"></b></a>
                                <ul id="Ul2" class="dropdown-menu" >
                                    <li> 
                                        <a href="ControllerEditorial?accion=read" id="A2">Consulta</a>
                                    </li>
                                    <li> 
                                        <a href="ControllerLibro?accion=read" id="A3">Busqueda</a>
                                    </li>
                                </ul>
                             </li>   
                             <li id="Li2" class="dropdown" >
                                <a href="" class="dropdown-toggle" data-toggle="dropdown"  id="A1">Producto<b class="caret"></b></a>
                                <ul id="Ul2" class="dropdown-menu" >
                                    <li> 
                                        <a href="ControllerEditorial?accion=read" id="A2">Consulta</a>
                                    </li>
                                    <li> 
                                        <a href="ControllerLibro?accion=read" id="A3">Busqueda</a>
                                    </li>
                                </ul>
                             </li>   
                        </ul>                   
                    </div>
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

