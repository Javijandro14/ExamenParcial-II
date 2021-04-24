package org.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.config.Conexion;
import org.interfaces.CrudDetallePedido;
import org.modelos.DetallePedido;
import org.modelos.DetallePedido;

public class DaoDetallePedido implements CrudDetallePedido{
    DetallePedido detallePedido = new DetallePedido();
    String sql = "";
    Conexion con = new Conexion();
    ResultSet rs = null;
    boolean resp = false;
    
    @Override
    public List listar(){
        ArrayList<DetallePedido> lstDetallePedido = new ArrayList<>();
        try{
            sql = "SELECT * FROM DETALLE_PEDIDO";
            con.open();
            rs = con.executeQuery(sql);
            while(rs.next()){
                DetallePedido detallePedido = new DetallePedido();
                detallePedido.setIdDetallePedido(rs.getInt("ID_DETALLE_PEDIDO"));
                detallePedido.setIdPedido(rs.getInt("ID_PEDIDO"));
                detallePedido.setIdProducto(rs.getInt("ID_PRODUCTO"));
                detallePedido.setCantidad(rs.getInt("CATIDAD"));
                detallePedido.setPrecio(rs.getDouble("PRECIO"));
                detallePedido.setTotal(rs.getDouble("TOTAL_LINEA"));
                detallePedido.setObservacion(rs.getString("OBSERVACION"));
                lstDetallePedido.add(detallePedido);
            }
            rs.close();
            con.close();
        } catch(ClassNotFoundException ex){
            Logger.getLogger(DaoDetallePedido.class.getName()).log(Level.SEVERE, null, ex);
        } catch(Exception ex){
            Logger.getLogger(DaoDetallePedido.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lstDetallePedido;
    }

    @Override
    public DetallePedido list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean insertar(DetallePedido detallePedido) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean modificar(DetallePedido detallePedido) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(DetallePedido detallePedido) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List busqueda(String parametro, String opcion) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
