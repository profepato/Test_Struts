package action;

import com.opensymphony.xwork2.ActionSupport;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.DAO_Producto;
import model.Producto;

public class ControllerProductoAction extends ActionSupport{
    private Producto producto;
    private List<Producto> productos;
    private DAO_Producto dp;
    private int idProducto;

    public ControllerProductoAction() {
        try {
            dp = new DAO_Producto();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ControllerProductoAction.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public String delete(){
        try {
            dp.delete(idProducto);
        } catch (SQLException ex) {
            Logger.getLogger(ControllerProductoAction.class.getName()).log(Level.SEVERE, null, ex);
        }
        return SUCCESS;
    }
    
    public String create(){
        try {
            dp.create(producto);
        } catch (SQLException ex) {
            Logger.getLogger(ControllerProductoAction.class.getName()).log(Level.SEVERE, null, ex);
        }
        return SUCCESS;
    }
    
    public String read(){
        try {
            productos = dp.read();
        } catch (SQLException ex) {
            Logger.getLogger(ControllerProductoAction.class.getName()).log(Level.SEVERE, null, ex);
            return ERROR;
        }
        return SUCCESS;
    }

    public Producto getProducto() {
        return producto;
    }

    public void setProducto(Producto producto) {
        this.producto = producto;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public List<Producto> getProductos() {
        return productos;
    }

    public void setProductos(List<Producto> productos) {
        this.productos = productos;
    }
}
