package org.dao;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.config.Conexion;
import org.interfaces.CrudMunicipio;
import org.modelos.Municipio;

public class DaoMunicipio implements CrudMunicipio{
    Municipio municipio = new Municipio();
    String sql = "";
    Conexion con = new Conexion();
    ResultSet rs = null;
    boolean resp = false;
    @Override
    public List listar() {
        ArrayList<Municipio> lstMunicipios = new ArrayList<>();
        try{
            sql = "SELECT * FROM MUNICIPIO";
            con.open();
            rs = con.executeQuery(sql);
            while(rs.next()){
                Municipio municipios = new Municipio();
                municipios.setIdDepartamento(rs.getInt("ID_DEPARTAMENTO"));
                municipios.setIdMunicipio(rs.getInt("ID_MUNICIPIO"));
                municipios.setMunicipio(rs.getString("NOMBRE"));
                lstMunicipios.add(municipios);
            }
            rs.close();
            con.close();
        } catch(ClassNotFoundException ex){
            Logger.getLogger(DaoMunicipio.class.getName()).log(Level.SEVERE, null, ex);
        } catch(Exception ex){
            Logger.getLogger(DaoMunicipio.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lstMunicipios;
    }

    @Override
    public Municipio list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean insertar(Municipio municipio) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean modificar(Municipio municipio) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(Municipio municipio) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List busqueda(String parametro, String opcion) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
