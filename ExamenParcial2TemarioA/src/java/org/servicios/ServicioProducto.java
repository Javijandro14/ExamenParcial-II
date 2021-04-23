/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.servicios;

import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import org.dao.DaoProducto;
import org.modelos.Producto;

/**
 *
 * @author javie
 */
@WebService(serviceName = "ServicioProducto")
public class ServicioProducto {
    DaoProducto daoProducto = new DaoProducto();
    @WebMethod(operationName = "getProducto")
    public List<Producto> getProducto() {
        List<Producto> lstProducto = daoProducto.listar();
        return lstProducto;
    }
}
