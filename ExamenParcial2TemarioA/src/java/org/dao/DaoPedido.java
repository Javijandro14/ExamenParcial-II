package org.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.config.Conexion;
import org.interfaces.CrudPedido;
import org.modelos.Pedido;

public class DaoPedido implements CrudPedido{
    Pedido pedido = new Pedido();
    //Variable para crear las sentencias SQL
    String strSql = "";
    //Se crea un obejto de tipo conexión para manejar la persistencia hacia la base de datos
    Conexion conexion = new Conexion();
    //Obtiene el resultado de las consultas SQL
    ResultSet rs = null;
    //flag para retornar si la sentencia SQL fue satisfactorio o no
    boolean respuesta = false;
    
    @Override
    public List listar() {
         ArrayList<Pedido> lstPedido = new ArrayList<>();
        try {
            strSql = "SELECT DBO.PEDIDO.ID_PEDIDO, dbo.CLIENTE.NOMBRE, dbo.CLIENTE.APELLIDO,dbo.PEDIDO.OBSERVACION, DEPARTAMENTO.NOMBRE as 'departamento',MUNICIPIO.NOMBRE as 'municipio',dbo.PEDIDO.ESTADO, dbo.PEDIDO.TOTAL, dbo.PEDIDO.TOTAL_USD from DBO.PEDIDO JOIN dbo.CLIENTE on dbo.PEDIDO.ID_CLIENTE=dbo.CLIENTE.ID_CLIENTE join dbo.DEPARTAMENTO on dbo.PEDIDO.ID_DEPARTAMENTO= dbo.DEPARTAMENTO.ID_DEPARTAMENTO join dbo.MUNICIPIO on dbo.DEPARTAMENTO.ID_DEPARTAMENTO=dbo.MUNICIPIO.ID_DEPARTAMENTO join dbo.PEDIDO P on P.ID_MUNICIPIO=dbo.MUNICIPIO.ID_MUNICIPIO;";
            conexion.open();
            rs = conexion.executeQuery(strSql);

            while (rs.next()) {
                Pedido pedido = new Pedido();
                pedido.setIdPedido(rs.getInt("ID_PEDIDO"));
                pedido.setCliente(rs.getString("NOMBRE")+" "+rs.getString("APELLIDO"));
                pedido.setDepartamento(rs.getString("departamento"));
                pedido.setMunicipio(rs.getString("municipio"));
                pedido.setEstado(rs.getInt("ESTADO"));
                pedido.setObservacion(rs.getString("OBSERVACION"));
                pedido.setTotal(rs.getDouble("TOTAL"));
                pedido.setTotalUsd(rs.getDouble("TOTAL_USD"));
                lstPedido.add(pedido);
            }
            rs.close();
            conexion.close();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DaoPedido.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(DaoPedido.class.getName()).log(Level.SEVERE, null, ex);
        }

        return lstPedido;
    }

    @Override
    public Pedido list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean insertar(Pedido pedido) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean modificar(Pedido pedido) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(Pedido pedido) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List busqueda(String parametro, String opcion) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }    

}
