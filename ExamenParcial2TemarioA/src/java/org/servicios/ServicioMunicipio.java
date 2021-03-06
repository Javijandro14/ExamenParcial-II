package org.servicios;

import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import org.dao.DaoMunicipio;
import org.modelos.Municipio;

@WebService(serviceName = "ServicioMunicipio")
public class ServicioMunicipio {

    DaoMunicipio daoMunicipio = new DaoMunicipio();
    @WebMethod(operationName = "getMunicipio")
    public List<Municipio> getMunicipio() {
        List<Municipio> lstMunicipio= daoMunicipio.listar();
        return lstMunicipio;
    }
    
    @WebMethod(operationName = "getMunicipioId")
    public Municipio getMunicipioId(@WebParam(name = "idMunicipio") int idMunicipio){
        Municipio municipio = daoMunicipio.list(idMunicipio);
        return municipio;
    }
}
