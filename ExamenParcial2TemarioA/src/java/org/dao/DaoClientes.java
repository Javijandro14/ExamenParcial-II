package org.dao;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.config.Conexion;
import org.interfaces.CrudClientes;
import org.modelos.Clientes;

public class DaoClientes implements CrudClientes{
    
    Clientes clientes = new Clientes();
    String sql = "";
    Conexion con = new Conexion();
    ResultSet rs = null;
    boolean resp = false;

    @Override
    public List listar() {
        ArrayList<Clientes> lstCliente = new ArrayList<>();
        try{
            sql = "SELECT * FROM CLIENTE";
            con.open();
            rs = con.executeQuery(sql);
            while(rs.next()){
                Clientes cliente = new Clientes();
                cliente.setIdCliente(rs.getInt("ID_CLIENTE"));
                cliente.setNombre(rs.getString("NOMBRE"));
                cliente.setApellido(rs.getString("APELLIDO"));
                cliente.setNit(rs.getString("NIT"));
                cliente.setTelefono(rs.getString("TELEFONO"));
                cliente.setDireccion(rs.getString("DIRECCION"));
                lstCliente.add(cliente);
            }
            rs.close();
            con.close();
        } catch(ClassNotFoundException ex){
            Logger.getLogger(DaoClientes.class.getName()).log(Level.SEVERE, null, ex);
        } catch(Exception ex){
            Logger.getLogger(DaoClientes.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lstCliente;
    }

    @Override
    public Clientes list(int id) {
       sql = "SELECT * FROM CLIENTE WHERE NIT=" + id;
        try {
            con.open();
            rs = con.executeQuery(sql);
            while(rs.next()){
                clientes.setIdCliente(rs.getInt("ID_CLIENTE"));
                clientes.setNombre(rs.getString("NOMBRE"));
                clientes.setApellido(rs.getString("APELLIDO"));
                clientes.setNit(rs.getString("NIT"));
                clientes.setTelefono(rs.getString("TELEFONO"));
                clientes.setDireccion(rs.getString("DIRECCION"));
            }
            rs.close();
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return clientes;
    }

    @Override
    public boolean insertar(Clientes clientes) {
        sql = "INSERT INTO CLIENTE (ID_CLIENTE, NOMBRE, APELLIDO, NIT, TELEFONO, DIRECCION) "
                    +"VALUES ((SELECT ISNULL(MAX(ID_CLIENTE),0) + 1 FROM CLIENTE), '" + clientes.getNombre() +"', '" + clientes.getApellido() +"',"
                    +" '" + clientes.getNit() +"', '" + clientes.getTelefono() +"', '" + clientes.getDireccion() + "')";
        try {
            con.open();            
            resp = con.executeSql(sql);            
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return resp;
    }

    @Override
    public boolean modificar(Clientes clientes) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(Clientes clientes) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List busqueda(String parametro, String opcion) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
