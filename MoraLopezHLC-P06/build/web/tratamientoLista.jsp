<%-- 
    Document   : tratamientoLista
    Created on : 08-feb-2020, 19:01:58
    Author     : javim
--%>

<%@page import="java.util.GregorianCalendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="clases.*"%>
<jsp:useBean id="lista" class="clases.HashMapRegistros" scope="session"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
        <%! 
           String nombre;
           String apellidos;
           float sueldo;
           GregorianCalendar fecha;
           String cadenaFecha;
           PersonaBean nueva;
           int dia, mes, anio;
        %>
  
        <%
                 
                
                    //lo podria haber hecho con setProperty ya que es más aconsejable
                    if(request.getParameter("nombre")!=null && request.getParameter("apellidos")!=null)
                    {
                        out.print("inserccion datos");
                        nombre=request.getParameter("nombre");
                        apellidos=request.getParameter("apellidos");
                        sueldo=Float.parseFloat(request.getParameter("sueldo"));
                        cadenaFecha=request.getParameter("fecha_nac");
                        anio=Integer.parseInt(cadenaFecha.substring(0, 4));
                        mes=Integer.parseInt(cadenaFecha.substring(5, 7));
                        dia=Integer.parseInt(cadenaFecha.substring(8, 10));
                        fecha=new GregorianCalendar(anio, mes-1, dia);
                        nueva=new PersonaBean();
                        nueva.setApellidos(apellidos);
                        nueva.setNombre(nombre);
                        nueva.setSueldo(sueldo);
                        nueva.setFecha(fecha);
                        lista.aniadirPersona(nueva);%>
                          <jsp:forward page="index.html"/>
                    <%}%>  
                    
               
                
        
    </body>
</html>
