
package clases;

import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;




public class Zodiaco {
    
    private String signo;
    private int Edad;
    
    
    public Zodiaco() {
    }

    public String getSigno(int mes, int dia) {
        return signo= obtenerZodiaco(mes, dia);
    }

    public void setSigno(String signo) {
        this.signo = signo;
    }
    
    
    
    private String obtenerZodiaco(int mes, int dia){
        
        switch(mes){
            
            
            case 1:
                    if(dia>=20)
                        return "ACUARIO";
                    else
                        return "CAPRICORNIO";
                
            case 2:
                    if(dia>=18)
                        return "PISCIS";
                    else
                        return "ACUARIO";
                
            case 3:
                    if(dia>=21)
                        return "ARIES";
                    else
                        return "PISCIS";
                
            case 4:
                    if(dia>=20)
                        return "TAURO";
                    else
                        return "ARIES";
            case 5:
                    if(dia>=21)
                        return "GÉMINIS";
                    else
                        return "TAURO";
            case 6:
                    if(dia>=21)
                        return "CANCER";
                    else
                        return "GÉMINIS";
            case 7:
                    if(dia>=23)
                        return "LEO";
                    else
                        return "CANCER";
            case 8:
                    if(dia>=23)
                        return "VIRGO";
                    else
                        return "LEO";
            case 9:
                    if(dia>=23)
                        return "LIBRA";
                    else
                        return "VIRGO";
            case 10:
                    if(dia>=23)
                        return "ESCORPIO";
                    else
                        return "LIBRA";
            case 11:
                    if(dia>=22)
                        return "SAGITARIO";
                    else
                        return "ESCORPIO";
            case 12:
                    if(dia>=22)
                        return "CAPRICORNIO";
                    else
                        return "SAGITARIO";
        }
        
        
        return "NO TIENE SIGNO";
    }

    public String getSigno() {
        return signo;
    }

    public int getEdad(GregorianCalendar f) {
        
        GregorianCalendar fecha=f;
        
        LocalDate fechaNac = LocalDate.parse(obtenerCadenaFecha(fecha));
        LocalDate ahora = LocalDate.now();

        Period periodo = Period.between(fechaNac, ahora);
       
        return  periodo.getYears();
    }
    
    private String obtenerCadenaFecha(GregorianCalendar fecha)//añade 0 a la izquierda del mes y/o dia, para los filtros en la fecha de navimiento input
    {
        String cadenaFechaNac=""+fecha.get(Calendar.YEAR);
        if((fecha.get(Calendar.MONTH)+1)<10){cadenaFechaNac+="-0"+(fecha.get(Calendar.MONTH)+1);}
        else{cadenaFechaNac+="-"+fecha.get(Calendar.DAY_OF_MONTH);}
        if(fecha.get(Calendar.DAY_OF_MONTH)<10){cadenaFechaNac+="-0"+fecha.get(Calendar.DAY_OF_MONTH);}
        else{cadenaFechaNac+="-"+fecha.get(Calendar.DAY_OF_MONTH);}
        
        return cadenaFechaNac;

    };
    
    
}
