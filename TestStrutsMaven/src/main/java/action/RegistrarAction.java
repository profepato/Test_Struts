package action;

import com.opensymphony.xwork2.ActionSupport;
import model.Usuario;

public class RegistrarAction extends ActionSupport{
    private Usuario usuario;
    
    public String registrar(){
        return SUCCESS;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
    
    
    
}
