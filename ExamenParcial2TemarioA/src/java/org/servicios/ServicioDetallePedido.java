package org.servicios;

import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import org.dao.DaoDetallePedido;
import org.modelos.DetallePedido;

@WebService(serviceName = "ServicioDetallePedido")
public class ServicioDetallePedido {
    DaoDetallePedido daoDetallePedido = new DaoDetallePedido();
    @WebMethod(operationName = "getDetallePedido")
    public List<DetallePedido> getDetallePedido() {
        List<DetallePedido> lstDetallePedido = daoDetallePedido.listar();
        return lstDetallePedido;
    }
}
