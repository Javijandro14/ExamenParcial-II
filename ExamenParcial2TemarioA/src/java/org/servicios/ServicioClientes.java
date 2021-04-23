package org.servicios;

import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import org.dao.DaoClientes;
import org.modelos.Clientes;

@WebService(serviceName = "ServicioClientes")
public class ServicioClientes {

    DaoClientes daoClientes = new DaoClientes();
    @WebMethod(operationName = "hello")
    public List<Clientes> getClientes(@WebParam(name = "nit") String nit) {
        List<Clientes> lstClientes = (List<Clientes>) daoClientes.list(Integer.parseInt(nit));
        return lstClientes;
    }
}
