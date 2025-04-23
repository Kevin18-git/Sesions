/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controladores;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/*import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;*/

/**
 *
 * @author Personal
 */
@WebServlet(name="ValidarUsuario", urlPatterns = {"/ValidarUsuario/"})
public class ValidarUsuario extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user = request.getParameter("usuariO");
        String pass = request.getParameter("clavE");
        
        boolean esValido = false;
        String mensaje = "";
        
if("admin".equals(user) && "1234".equals(pass)) {
            esValido = true;
            mensaje = "Registro Exitoso";
        } else {
            mensaje = "Registro Inválido";
        }
        
        // Agregar atributos al request
        request.setAttribute("esValido", esValido);
        request.setAttribute("mensaje", mensaje);
        request.setAttribute("usuario", user);
        
        // Redirigir a JSP
        request.getRequestDispatcher("resultado.jsp").forward(request, response);
    }
}

