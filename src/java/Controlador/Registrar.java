/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import DAO.*;
import Modelo.*;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sun.net.ftp.FtpReplyCode;

/**

*
 * @author Noctics
 */
public class Registrar extends HttpServlet {

    UsuarioDAO udao = new UsuarioDAO();
    ReclamosDAO rdao = new ReclamosDAO();
    DestinosDAO Ddao = new DestinosDAO();
    CategoriaDAO cdao = new CategoriaDAO();
    BlogDAO bdao = new BlogDAO();
    EmpleadoDAO edao = new EmpleadoDAO();
    InformesDAO idao = new InformesDAO();
    Usuario us= new Usuario();
    MensajeDAO m= new MensajeDAO();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Registrar</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Registrar at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
        
    }
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            String accion=request.getParameter("accion");
            
            if(accion.equalsIgnoreCase("Registrar")){
                String nom=request.getParameter("Nombres");
                String ape=request.getParameter("Apellidos");
                String email=request.getParameter("Email");
                String pass=request.getParameter("Password");
                us=udao.BuscarUsuario(email);
                if(us.getCorreo()!=null){
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }else{
                    udao.Registrar(nom, ape, email, pass);
                    m.Mensaje();
                    request.getRequestDispatcher("Mensaje.jsp").forward(request, response);
                }
            }
            
            if(accion.equalsIgnoreCase("RegistroReclamo")){
                String nom=request.getParameter("nombres");
                String ape=request.getParameter("apellidos");
                String dni=request.getParameter("dni");
                String dom=request.getParameter("docmicilio");
                String ema=request.getParameter("correo");
                String tel=request.getParameter("telefono");
                String des=request.getParameter("reclamo");
                
                rdao.Registrar(nom, ape, dni, dom, ema, tel, des);
                
                String msj = "SOLICITUD ENVIADA";
                request.setAttribute("msj", msj);
                request.getRequestDispatcher("reclamaciones.jsp").forward(request, response);
            }
            if(accion.equalsIgnoreCase("RegistroDestino")){
                String des=request.getParameter("destino");
                String fec=request.getParameter("fecha");
                Double cos=Double.parseDouble(request.getParameter("costo"));
                String ima=request.getParameter("imagen");
                String cat=request.getParameter("categoria");
                cat = cat.substring(0, 5);
                Ddao.Registrar(des, fec, cos, ima, cat);
                System.out.println("el registro si se realizo");
                request.getRequestDispatcher("administrador.jsp").forward(request, response);
            }
            if(accion.equalsIgnoreCase("Enviar")){
                String dest=request.getParameter("destino");
                
                String msj="";
                cdao.Registrar(dest);
                msj = "Agregado correctamente";
                request.setAttribute("msj", msj);
                request.getRequestDispatcher("administrador.jsp").forward(request, response);
            }
            if(accion.equalsIgnoreCase("RegistroBlog")){
                String dest=request.getParameter("destino");
                String desc=request.getParameter("descripcion");
                String img=request.getParameter("imagen");
                
                String msj="";
                bdao.Registrar(dest, desc, img);
                msj = "Agregado correctamente";
                request.setAttribute("msj", msj);
                request.getRequestDispatcher("administrador.jsp").forward(request, response);
            }
            if(accion.equalsIgnoreCase("RegistroEmpleado")){
                String nom=request.getParameter("nombre");
                String ape=request.getParameter("apellido");
                String dni=request.getParameter("dni");
                String tel=request.getParameter("telefono");
                String use=request.getParameter("email");
                String pas=request.getParameter("passw");
                
                edao.Registrar(nom, ape, dni, tel, use, pas);
                request.getRequestDispatcher("administrador.jsp").forward(request, response);
            }
            if(accion.equalsIgnoreCase("Informe")){
                String nom=request.getParameter("nombre");
                String ape=request.getParameter("apellidos");
                String cor=request.getParameter("correo");
                String tel=request.getParameter("telefono");
                String men=request.getParameter("texto");
                
                idao.Registrar(nom, ape, cor, tel, men);
                String msj="Solictud enviada correctamente";
                request.setAttribute("msj", msj);
 
                request.getRequestDispatcher("Mensaje.jsp").forward(request, response);
            }
}

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
