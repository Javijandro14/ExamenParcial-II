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
    @WebMethod(operationName = "getClientes")
    public List<Clientes> getClientes() {
        List<Clientes> lstClientes = daoClientes.listar();
        return lstClientes;
    }
}
