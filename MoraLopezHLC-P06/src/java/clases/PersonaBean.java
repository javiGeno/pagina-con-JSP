package clases;


import java.util.GregorianCalendar;


public class PersonaBean {
    
    private String nombre;
    private String apellidos;
    private float sueldo;
    private GregorianCalendar fecha;

    public PersonaBean() {
        this.nombre = null;
        this.apellidos = null;
        this.sueldo = 0;
    }

    public PersonaBean(String nombre, String apellidos, float sueldo, GregorianCalendar fecha) {
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.sueldo = sueldo;
        this.fecha=fecha;
    }
    

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public void setSueldo(float sueldo) {
        this.sueldo = sueldo;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public float getSueldo() {
        return sueldo;
    }

    public void setFecha(GregorianCalendar fecha) {
        this.fecha = fecha;
    }

    public GregorianCalendar getFecha() {
        return fecha;
    }

    
    
    
}
