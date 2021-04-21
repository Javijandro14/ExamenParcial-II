
package org.interfaces;

import java.util.List;
import org.modelos.Municipio;

public interface CrudMunicipio {
    public List listar();
    public Municipio list (int id);
    public boolean insertar(Municipio municipio);
    public boolean modificar(Municipio municipio);
    public boolean eliminar(Municipio municipio);
    public List busqueda(String parametro, String opcion);
}
