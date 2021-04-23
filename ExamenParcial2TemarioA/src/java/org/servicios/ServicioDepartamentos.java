package org.servicios;

import java.util.List;
import javax.jws.WebMethod;
import javax.jws.WebService;
import org.dao.DaoDepartamentos;
import org.modelos.Departamentos;

@WebService(serviceName = "ServicioDepartamentos")
public class ServicioDepartamentos {

    DaoDepartamentos daoDepartamentos = new DaoDepartamentos();
    @WebMethod(operationName = "getDepartamentos")
    public List<Departamentos> getDepartamentos() {
         List<Departamentos> lstDepartamentos= daoDepartamentos.listar();
        return lstDepartamentos;
    }

}
