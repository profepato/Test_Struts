package action;

import com.opensymphony.xwork2.ActionSupport;
import model.Mensaje;

public class HolaMundoAction extends ActionSupport {

    private Mensaje mensaje;

    public String saludar() {
        mensaje = new Mensaje();
        contHola++;

        return SUCCESS;
    }

    public Mensaje getMensaje() {
        return mensaje;
    }

    private static int contHola = 0;

    public int getContHola() {
        return contHola;
    }
}
