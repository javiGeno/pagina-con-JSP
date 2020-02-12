<%-- 
    Document   : registro
    Created on : 07-feb-2020, 13:12:19
    Author     : javim
--%>



<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
         <link rel="stylesheet" href="cssIndex.css">
         <link rel="stylesheet" href="cssRegistro.css">
    </head>
    <body>
        <header>
            <%! GregorianCalendar fechaHoy= new GregorianCalendar();%>
            <h1>REGISTRO USUARIO</h1>
            <h2>Hoy es <%= fechaHoy.get(Calendar.DAY_OF_MONTH)+"/"+(fechaHoy.get(Calendar.MONTH)+1)+"/"+fechaHoy.get(Calendar.YEAR)%></h1>
           
        </header>
        <section class=" mt-3">
            <form action="tratamientoLista.jsp" class="card col-md-3 mx-auto" >
                <%! String cadenaFechaNac=obtenerCadenaFecha(); %>
                
                
      
                <%! 
                public String obtenerCadenaFecha()//añade 0 a la izquierda del mes y/o dia, para los filtros en la fecha de navimiento input
                {
                    String cadenaFechaNac=""+fechaHoy.get(Calendar.YEAR);
                    if((fechaHoy.get(Calendar.MONTH)+1)<10){cadenaFechaNac+="-0"+(fechaHoy.get(Calendar.MONTH)+1);}
                    else{cadenaFechaNac+="-"+fechaHoy.get(Calendar.DAY_OF_MONTH);};
                    if(fechaHoy.get(Calendar.DAY_OF_MONTH)<10){cadenaFechaNac+="-0"+fechaHoy.get(Calendar.DAY_OF_MONTH);}
                    else{cadenaFechaNac+="-"+fechaHoy.get(Calendar.DAY_OF_MONTH);};
                       
                    return cadenaFechaNac;
                   
                };
                %>
                <div class="header p-2  center-block mx-auto">
                    <i class="fas fa-user p-3" ></i>
                </div>
                <div class="body container-fluid" >
                    <input type="text" onkeyup="todosCorrectos()" class=" m-1" name="nombre" placeholder="Nombre" />
                    <input type="text" onkeyup="todosCorrectos()" class=" m-1" name="apellidos" placeholder="Apellidos" />
                    <input type="text" onkeyup="todosCorrectos()" class=" m-1" name="sueldo" placeholder="Sueldo" />
                    <input type="date" onkeyup="todosCorrectos()" class=" m-1" name="fecha_nac" value="<%=cadenaFechaNac%>" max="<%=cadenaFechaNac%>" placeholder="Fecha nacimiento"/>
                </div>
                <div id="caja_botones" class="footer p-5 mx-auto">
                    <input type="submit" id="botonRegistro" value="REGISTRAR"/>
                    <button> <a href="index.html" class="text-white">CANCELAR</a></button>
                </div>
            </form>
                 
               
        </section>
                <script src="comprobacionRegistro.js"></script>  
                
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    </body>
</html>
