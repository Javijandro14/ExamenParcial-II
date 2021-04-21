
package org.interfaces;

import java.util.List;
import org.modelos.Pedido;

public interface CrudPedido {
    public List listar();
    public Pedido list (int id);
    public boolean insertar(Pedido pedido);
    public boolean modificar(Pedido pedido);
    public boolean eliminar(Pedido pedido);
    public List busqueda(String parametro, String opcion);
}
