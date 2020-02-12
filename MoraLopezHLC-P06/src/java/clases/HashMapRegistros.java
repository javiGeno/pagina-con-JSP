package clases;


import java.util.GregorianCalendar;
import java.util.HashMap;


public class HashMapRegistros {
    
    HashMap<String, PersonaBean> listaPersonas=new HashMap<>();
    
    public HashMapRegistros(){
        
        this.aniadirPersona(new PersonaBean("Juan", "Sanchez", 2000, new GregorianCalendar(2010, 1, 30)));
        this.aniadirPersona(new PersonaBean("Pedro", "Ruiz", 1000, new GregorianCalendar(2010, 1, 30)));
        this.aniadirPersona(new PersonaBean("Maria", "Jimenez", (float) 2500.50, new GregorianCalendar(2010, 1, 30)));
        this.aniadirPersona(new PersonaBean("Luis", "Lopez", 2000, new GregorianCalendar(2010, 1, 30)));
        this.aniadirPersona(new PersonaBean("Ana", "Rodriguez", (float) 1000.25, new GregorianCalendar(2010, 1, 30)));
        this.aniadirPersona(new PersonaBean("Carmen", "Martinez", 1500, new GregorianCalendar(2010, 1, 30)));
        this.aniadirPersona(new PersonaBean("Raul", "Gonzalez", (float) 3000.5, new GregorianCalendar(2010, 1, 30)));
     
        this.aniadirPersona(new PersonaBean("Pepe", "Cabello", 805, new GregorianCalendar(2010, 1, 30)));
        this.aniadirPersona(new PersonaBean("Claudia", "Camino", 1500, new GregorianCalendar(2010, 1, 30)));
        this.aniadirPersona(new PersonaBean("Jose", "Perez", 2000, new GregorianCalendar(2010, 1, 30)));
    }
    
    public void aniadirPersona(PersonaBean per)
    {
        listaPersonas.put(((per.getNombre().replace(" ", ""))+per.getApellidos()).replace(" ", ""), per);
    }
    
    public void borrarPersona(PersonaBean per)
    {
        listaPersonas.remove(per.getNombre()+per.getApellidos());
    }
    
    public PersonaBean buscaPersona(PersonaBean per)
    {
        return listaPersonas.get(per.getNombre()+per.getApellidos());
    }

    public HashMap<String, PersonaBean> getListaPersonas() {
        return listaPersonas;
    }
    
    
}
