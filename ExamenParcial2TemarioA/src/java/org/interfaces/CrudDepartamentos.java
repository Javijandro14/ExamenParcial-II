
package org.interfaces;

import java.util.List;
import org.modelos.Departamentos;

public interface CrudDepartamentos {
    public List listar();
    public Departamentos list (int id);
    public boolean insertar(Departamentos departamentos);
    public boolean modificar(Departamentos departamentos);
    public boolean eliminar(Departamentos departamentos);
    public List busqueda(String parametro, String opcion);
}
