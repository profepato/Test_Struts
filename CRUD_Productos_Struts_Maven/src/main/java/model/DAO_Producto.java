package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DAO_Producto extends Conexion implements DAO<Producto>{

    public DAO_Producto() throws ClassNotFoundException, SQLException {
        super("bd_productos");
    }

    @Override
    public void create(Producto ob) throws SQLException {
        ejecutar("INSERT INTO producto VALUES(NULL, '"+ob.getNombre()+"','"+ob.getPrecio()+"');");
    }

    @Override
    public List<Producto> read() throws SQLException {
        List<Producto> lista = new ArrayList<>();
        
        ResultSet rs = ejecutar("SELECT * FROM producto");
        
        Producto p;
        while(rs.next()){
            p = new Producto();
            
            p.setId(rs.getInt(1));
            p.setNombre(rs.getString(2));
            p.setPrecio(rs.getInt(3));
            
            lista.add(p);
        }
        
        return lista;
    }

    @Override
    public void update(Producto ob) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(int id) throws SQLException {
        ejecutar("DELETE FROM producto WHERE id = "+id);
    }
    
}
