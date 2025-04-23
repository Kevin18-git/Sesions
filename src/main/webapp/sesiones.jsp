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
        <p>ID de sesión: <%= session.getId() %></p>
        <p>numeros de visitas: <%= visitas%></p>
        <p><%
            if (session.getAttribute("primeraVisita") == null){
            session.setAttribute("primeraVisita", new java.util.Date());
            }
            out.print(session.getAttribute("primeraVisita"));
            %></p>
        
        <h2>Información del cliente:</h2>
        <p>tu navegador es: <%= navegador %></p>
        <p>tu direccion ip es: <%= request.getRemoteAddr()%></p>
        
        <h2>Fomulario para agregar datos de la sesión:</h2>
        <form method="POST">
            Nombre: <input type="text" name="nombre"><br></br>
            Color favorito: <input type="text" name="color"><br></br>
            <input type="submit" value="Guardar en sesión">
        </form>
        
        <%
        // Procesar formulario
        if(request.getMethod().equals("POST")) {
            String nombre = request.getParameter("nombre");
            String color = request.getParameter("color");
            
            if(nombre != null && !nombre.trim().isEmpty()) {
                session.setAttribute("nombreUsuario", nombre);
            }
            
            if(color != null && !color.trim().isEmpty()) {
                session.setAttribute("colorFavorito", color);
            }
        }
        
        // Mostrar datos guardados
        String nombreGuardado = (String) session.getAttribute("nombreUsuario");
        String colorGuardado = (String) session.getAttribute("colorFavorito");
    %>
    
    <% if(nombreGuardado != null || colorGuardado != null) { %>
        <h2>Datos guardados en sesión:</h2>
        <% if(nombreGuardado != null) { %>
            <p>Nombre: <%= nombreGuardado %></p>
        <% } %>
        <% if(colorGuardado != null) { %>
            <p>Color favorito: <%= colorGuardado %></p>
        <% } %>
        <form method="post" action="?accion=limpiar">
            <input type="hidden" name="accion" value="limpiar">
            <input type="submit" value="Limpiar sesión">
        </form>
    <% } %>
    
    <%
        // Limpiar sesión
        if("limpiar".equals(request.getParameter("accion"))) {
            session.invalidate();
            response.sendRedirect("sesiones.jsp");
        }
    %>

    </body>
</html>
