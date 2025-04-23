<%-- 
    Document   : login
    Created on : 10/04/2025, 10:11:00 a. m.
    Author     : Personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>

body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background: linear-gradient(to right, #6a11cb, #2575fc);
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
}


form {
    background-color: #ffffffcc;
    padding: 40px;
    border-radius: 10px;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
    text-align: center;
    width: 300px;
}




form {
    display: flex;
    flex-direction: column;
}

label {
    text-align: left;
    margin: 10px 0 5px;
    font-weight: bold;
}

input[type="text"],
input[type="password"] {
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}


input[type="submit"] {
    margin-top: 20px;
    background-color: #2575fc;
    color: white;
    border: none;
    padding: 10px;
    font-weight: bold;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
    background-color: #1a5edb;
}

nav {
    background-color: #2c3e50; 
    padding: 20px 30px;
    position: fixed;
    top: 0;
    width: 100%;
    z-index: 1000;
    box-shadow: 0 2px 8px rgba(0,0,0,0.2);
    height:60px;
}


nav, ul {
    list-style: none;
    margin: auto;
    padding: 0;
    display: flex;
    justify-content: flex-end; 
    gap: 50px;
}


a {
    text-decoration: none;
    color: white;
    font-weight: bold;
    transition: color 0.3s;
}


    </style>
    <body>
            <nav>
                <ul>
                    <li><a href="">Contactos</a></li>
                    <li><a href="">Información</a></li>
                    <li><a heref="#">Ajustes</a></li>
                </ul>
            </nav>
        <form name="Ingreso" action="ValidarUsuario" method="POST">
            <h1>Ingreso de usuarios</h1>
            <br></br>
            Usuario: <input type="text" name="usuariO" value="">
            <br></br>
            Password: <input type="password" name="clavE" value="">
            <br></br>
            <input type="submit" name="name" value="ingresar">
        </form>
    </body>
</html>
