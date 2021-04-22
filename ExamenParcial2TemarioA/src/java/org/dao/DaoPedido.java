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
            /* strSql =    "SELECT " + 
                        "   L.ID_LIBRO, L.PAGINAS, L.TITULO, L.ID_ESTADO, LE.DESCRIPCION ESTADO, " +
                        "   L.ID_CATEGORIA, C.DESCRIPCION CATEGORIA, L.ID_EDITORIAL, E.DESCRIPCION EDITORIAL  	" + 
                        "FROM	LIBRO L " + 
                        "   JOIN	CATEGORIA C " + 
                        "   ON  	L.ID_CATEGORIA = C.ID_CATEGORIA" + 
                        "   JOIN	EDITORIAL E" +
                        "   ON		L.ID_EDITORIAL = E.ID_EDITORIAL" +
                        "   JOIN	LIBRO_ESTADO LE" + 
                        "   ON		LE.ID_ESTADO = L.ID_ESTADO " +
                        "ORDER BY L.ID_LIBRO ASC";*/
            strSql = "SELECT dbo.LIBRO.ID_LIBRO, LIBRO.TITULO,LIBRO.PAGINAS,LIBRO.DESCRIPCION as 'LIBRODESC', LIBRO.ESTADO, LIBRO.ID_CATEGORIA, LIBRO.ID_ESTADO, LIBRO.ID_EDITORIAL, \n"
                    + "CATEGORIA.ID_CATEGORIA,CATEGORIA.DESCRIPCION as 'CATEGORIA',EDITORIAL.ID_EDITORIAL,EDITORIAL.DESCRIPCION as'EDITORIAL', LIBRO_ESTADO.DESCRIPCION as'ESTADOS', LIBRO_ESTADO.ID_ESTADO from dbo.CATEGORIA INNER JOIN dbo.LIBRO ON\n"
                    + "dbo.CATEGORIA.ID_CATEGORIA = dbo.LIBRO.ID_CATEGORIA INNER JOIN dbo.EDITORIAL ON dbo.EDITORIAL.ID_EDITORIAL= dbo.LIBRO.ID_EDITORIAL INNER JOIN dbo.LIBRO_ESTADO ON dbo.LIBRO_ESTADO.ID_ESTADO=dbo.LIBRO.ID_ESTADO";
            conexion.open();
            rs = conexion.executeQuery(strSql);

            while (rs.next()) {
                Pedido pedido = new Pedido();
                pedido.setIdPedido(rs.getInt("idPedido"));
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
