package org.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import org.config.Conexion;
import org.interfaces.CrudProducto;
import org.modelos.Producto;

public class DaoProducto implements CrudProducto{
    Producto prod = new Producto();
    String sql = "";
    Conexion con = new Conexion();
    ResultSet rs = null;
    boolean resp = false;

    @Override
    public List listar() {
        ArrayList<Producto> lstProd = new ArrayList<>();
        sql = "SELECT * FROM PRODUCTO";
        try {
            con.open();
            rs = con.executeQuery(sql);
            while(rs.next()){
                Producto produc = new Producto();
                produc.setIdProducto(rs.getInt("ID_PRODUCTO"));
                produc.setProducto(rs.getString("DESCRIPCION"));
                produc.setPrecio(rs.getFloat("PRECIO"));
                produc.setExistencia(rs.getInt("EXISTENCIA"));
                produc.setEstado(rs.getInt("ESTADO"));                
                lstProd.add(produc);
            }
            rs.close();
            con.close();
        } catch (Exception e) {
        }
        return lstProd;
    }

    @Override
    public Producto list(int id) {
        sql = "SELECT * FROM PRODUCTO WHERE ID_PRODUCTO=" + id;
        try {
            con.open();
            rs = con.executeQuery(sql);
            while(rs.next()){
                prod.setIdProducto(rs.getInt("ID_PRODUCTO"));
                prod.setProducto(rs.getString("DESCRIPCION"));
                prod.setPrecio(rs.getInt("PRECIO"));
                prod.setExistencia(rs.getInt("EXISTENCIA"));
                prod.setEstado(rs.getInt("ESTADO"));
               
            }
            rs.close();
            con.close();
        } catch (Exception e) {
        }
        return prod;
    }

    @Override
    public boolean insertar(Producto producto) {
        sql = "INSERT INTO PRODUCTO (ID_PRODUCTO, DESCRIPCION, PRECIO, EXISTENCIA, ESTADO) "
                    +"VALUES ((SELECT ISNULL(MAX(ID_PRODUCTO),0) + 1 FROM PRODUCTO), '" + producto.getProducto()+"',"
                    +" " + producto.getPrecio() +", " + producto.getExistencia() +", " + producto.getEstado() +")";
        try {
            con.open();            
            resp = con.executeSql(sql);            
            con.close();
        } catch (Exception e) {
        }
        return resp;
    }

    @Override
    public boolean modificar(Producto producto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(Producto producto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List busqueda(String parametro, String opcion) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
