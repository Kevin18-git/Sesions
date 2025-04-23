<%-- 
    Document   : resultado
    Created on : 11/04/2025, 10:56:02 a. m.
    Author     : Personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado de validacion</title>
    </head>
    
    <style>
 
body {
    margin: 0;
    padding: 0;
    font-family: 'Segoe UI', sans-serif;
    background: linear-gradient(to right, #0BC9E3, #E3830B);
    color: #fff;
    padding: 20px;
}


.bienvenida {
    font-size: 1.5em;
    color: #00ffcc;
}

.exito {
    color: #00ffcc;
    font-style: italic;
}

.error {
    color: #ff5e5e;
    font-weight: bold;
}

.volver {
    display: inline-block;
    margin-top: 10px;
    color: #fff;
    text-decoration: none;
    background-color: #ff5e5e;
    padding: 8px 16px;
    border-radius: 5px;
}

.volver:hover {
    background-color: #ff3333;
}


nav {
    background-color: rgba(0, 0, 0, 0.3);
    padding: 10px;
    border-radius: 10px;
    margin-top: 30px;
    text-align: center;
}

nav ul {
    list-style: none;
    padding: 0;
    display: flex;
    justify-content: center;
    gap: 20px;
}

nav ul li a {
    color: white;
    text-decoration: none;
    font-weight: bold;
    padding: 8px 12px;
    transition: background 0.3s ease;
    border-radius: 5px;
}

nav ul li a:hover {
    background-color: #ffffff33;
}


section {
    margin-top: 40px;
    padding: 20px;
    background-color: rgba(255, 255, 255, 0.1);
    border-radius: 10px;
}


h1 {
    font-size: 2em;
    border-bottom: 2px solid #fff;
    padding-bottom: 5px;
    margin-bottom: 10px;
}

.color{
    color: #F71B2C
}
    </style>
    <body>
        <h1>${mensaje}</h1>
        <% 
            Boolean valido = (Boolean)request.getAttribute("esValido");
            if (valido != null && valido){
            
            %>
            
            <nav>
                <ul>
                    <li><a href="login.jsp">login</a></li>
                    <li><a href="#contactos">Contactos</a></li>
                    <li><a href="#informacion">Información</a></li>
                    <li><a href="ajustes.html">Ajustes</a></li>
                </ul>
            </nav>
            <p> Bienvenido, admin !</p>
            <p> Has iniciado sesion correctamente.</P>
            
            <h1>Inicio</h1>
            <p>hola, Bienvenido</p>
            <br></br>
            <h1>Contactos</h1>
            <p>3113833535 kevin garcia<br>321312154 Cesar Manosalva</p>
            <br></br>
            <h1>informción</h1>
            <p>Ficha 2874586 del Sena Centro Minero</p>
            
            <% }else { %>
            <p class="color"> ❌❌❌❌usuario o contraseña incorrectos. ❌❌❌❌</P>
            <a href ="login.jsp"> Volver a intentar 😭</a>
            <% } %>
            

            

    </body>
</html>
