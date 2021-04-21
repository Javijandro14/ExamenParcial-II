
package org.interfaces;

import java.util.List;
import org.modelos.Producto;

public interface CrudProducto {
    public List listar();
    public Producto list (int id);
    public boolean insertar(Producto producto);
    public boolean modificar(Producto producto);
    public boolean eliminar(Producto producto);
    public List busqueda(String parametro, String opcion);
}
