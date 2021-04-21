
package org.interfaces;

import java.util.List;
import org.modelos.Clientes;

public interface CrudClientes {
    public List listar();
    public Clientes list (int id);
    public boolean insertar(Clientes clientes);
    public boolean modificar(Clientes clientes);
    public boolean eliminar(Clientes clientes);
    public List busqueda(String parametro, String opcion);
}
