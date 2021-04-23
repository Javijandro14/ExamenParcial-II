package org.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.config.Conexion;
import org.interfaces.CrudDepartamentos;
import org.modelos.Departamentos;

public class DaoDepartamentos implements CrudDepartamentos{

    Departamentos departamentos = new Departamentos();
    String sql = "";
    Conexion con = new Conexion();
    ResultSet rs = null;
    boolean resp = false;
    @Override
    public List listar() {
        ArrayList<Departamentos> lstDepartamentos = new ArrayList<>();
        try{
            sql = "SELECT * FROM DEPARTAMENTO";
            con.open();
            rs = con.executeQuery(sql);
            while(rs.next()){
                Departamentos departamentos = new Departamentos();
                departamentos.setIdDepartamento(rs.getInt("ID_DEPARTAMENTO"));
                departamentos.setDepartamento(rs.getString("NOMBRE"));
                lstDepartamentos.add(departamentos);
            }
            rs.close();
            con.close();
        } catch(ClassNotFoundException ex){
            Logger.getLogger(DaoDepartamentos.class.getName()).log(Level.SEVERE, null, ex);
        } catch(Exception ex){
            Logger.getLogger(DaoDepartamentos.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lstDepartamentos;
    }

    @Override
    public Departamentos list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean insertar(Departamentos departamentos) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean modificar(Departamentos departamentos) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(Departamentos departamentos) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List busqueda(String parametro, String opcion) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
