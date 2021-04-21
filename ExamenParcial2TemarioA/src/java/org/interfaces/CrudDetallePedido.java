
package org.interfaces;

import java.util.List;
import org.modelos.DetallePedido;

public interface CrudDetallePedido {
    public List listar();
    public DetallePedido list (int id);
    public boolean insertar(DetallePedido detallePedido);
    public boolean modificar(DetallePedido detallePedido);
    public boolean eliminar(DetallePedido detallePedido);
    public List busqueda(String parametro, String opcion);
}
