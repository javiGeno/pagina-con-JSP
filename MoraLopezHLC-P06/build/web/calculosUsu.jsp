<%-- 
    Document   : calculosUsu
    Created on : 09-feb-2020, 17:32:13
    Author     : javim
--%>

<%@page import="java.util.Calendar"%>
<%@page import="clases.PersonaBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="zodiacoEdad" class="clases.Zodiaco" />
<jsp:useBean id="lista" class="clases.HashMapRegistros" scope="session"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <%!String key;
           int dia;
           int mes;
           PersonaBean persona;%>
        <%key=request.getParameter("claveUsu");
        
            persona=lista.getListaPersonas().get(key);
            out.print(persona.getNombre());
            mes=persona.getFecha().get(Calendar.MONTH)+1;
            dia=persona.getFecha().get(Calendar.DAY_OF_MONTH);
            
           out.print(zodiacoEdad.getSigno(mes, dia));
           out.print(zodiacoEdad.getEdad(persona.getFecha()));
        %>
        
        
    </body>
</html>
