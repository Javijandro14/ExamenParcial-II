package org.servicios;

import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import org.dao.DaoPedido;
import org.modelos.Pedido;

@WebService(serviceName = "ServicioPedido")
public class ServicioPedido {

    DaoPedido daoPedido = new DaoPedido();
     @WebMethod(operationName = "getPedido")
    public List<Pedido> getPedido() {
        List<Pedido> lstPedido= daoPedido.listar();
        return lstPedido;
    }
}
