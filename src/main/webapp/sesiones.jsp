<%-- 
    Document   : sesiones
    Created on : 23/04/2025, 8:33:16 a. m.
    Author     : Personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manejo de sesiones</title>
    </head>
    <body>
        <h1>Manejo de sesiones</h1>
        
        <%
            Integer visitas = (Integer)
            session.getAttribute("contadorVisitas");
            if (visitas == null){
            visitas = 1;
            }else{
            visitas++;
            }
            session.setAttribute("contadorVisitas", visitas);
            String navegador = request.getHeader("User-Agent");
        %>
        
        <h2>Información de sesión</h2>
        <p>ID de sesión: <% session.getId() %></p>
        <p>numeros de visitas: <% visitas%></p>
        <p><%
            if (session.getAttribute("primeraVisita") == null){
            session.setAttribute("primeraVisita", new java.util.Date());
            }
            out.print(session.getAttribute("primeraVisita"));
            %></p>
    </body>
</html>
