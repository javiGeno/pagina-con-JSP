<%-- 
    Document   : listarEmpleados
    Created on : 08-feb-2020, 18:53:32
    Author     : javim
--%>

<%@page import="clases.PersonaBean"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="lista" class="clases.HashMapRegistros" scope="session"/>
    

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="cssIndex.css">
        <link href="cssListado.css" rel="stylesheet" type="text/css"/>
    </head>
    <style>
       
        
    </style>
    <body>
        <header>
           
            <h1>LISTADO USUARIO</h1>
           
        </header>
        <section class="mx-auto row" >
            <div class="col-md-2">
                 <a href="index.html" class="text-white"><i class="fas fa-arrow-circle-left enlaces volver"></i></a>
            </div>
            <table border="1" id="table" class="table col-md-8">
                <tr class="text-white">
                    <th>NOMBRE </th><th>APELLIDO </th><th colspan="2">SUELDO</th>
                </tr>
                <% for(Map.Entry<String, PersonaBean> emple : lista.getListaPersonas().entrySet()) { 
                    PersonaBean p=(PersonaBean)emple.getValue();%>
                    <tr>
                        <td><%=p.getNombre()%></td>
                        <td><%=p.getApellidos()%></td>
                        <td><%=p.getSueldo()%></td>
                        <td><a href="calculosUsu.jsp?claveUsu=<%=emple.getKey()%>"><i class="fas fa-user-check enlaces"></i></a></td>
                    </tr>
                <%
                };
                %>
            </table>
            <div class="col-md-2">
                
            </div>
        </section>
        <script>
            window.onload=cargar();
            function cargar()
            {
                setInterval(function(){
                    document.getElementById("table").style.opacity="1";
                }, 300);
            }
            
        </script>
        
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

        
    </body>
</html>
