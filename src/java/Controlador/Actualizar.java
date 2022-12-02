/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import DAO.BlogDAO;
import DAO.CategoriaDAO;
import DAO.DestinosDAO;
import DAO.EmpleadoDAO;
import DAO.ReclamosDAO;
import DAO.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author utente
 */
@WebServlet(name = "Actualizar", urlPatterns = {"/Actualizar"})
public class Actualizar extends HttpServlet {
    UsuarioDAO udao = new UsuarioDAO();
    ReclamosDAO rdao = new ReclamosDAO();
    DestinosDAO Ddao = new DestinosDAO();
    CategoriaDAO cdao = new CategoriaDAO();
    BlogDAO bdao = new BlogDAO();
    EmpleadoDAO edao = new EmpleadoDAO();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Actualizar</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Actualizar at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion=request.getParameter("accion");
            System.out.println("la accion es "+accion);
            
            if(accion.equalsIgnoreCase("EditDestino")){
                request.setAttribute("idDest", request.getParameter("id"));
                request.getRequestDispatcher("proyecto/Destino/modificar.jsp").forward(request, response);
            }else if (accion.equalsIgnoreCase("ActDestino")) {
                String id=request.getParameter("idDestino");
                String des=request.getParameter("destino");
                String fec=request.getParameter("fecha");
                Double cos=Double.parseDouble(request.getParameter("costo"));
                String ima=request.getParameter("imagen");
                String cat=request.getParameter("categoria");
                cat = cat.substring(0, 5);
                
                Ddao.Modificar(id, des, fec, cos, ima, cat);
                request.getRequestDispatcher("administrador.jsp").forward(request, response);
        }
            if(accion.equalsIgnoreCase("EditCateg")){
                request.setAttribute("idCateg", request.getParameter("id"));
                request.getRequestDispatcher("proyecto/Categoria/modificar.jsp").forward(request, response);
            }else if (accion.equalsIgnoreCase("Enviar")) {
                String id=request.getParameter("idCategoria");
                String dest=request.getParameter("destino");
                cdao.Modificar(id, dest);
                request.getRequestDispatcher("administrador.jsp").forward(request, response);
        }
            if(accion.equalsIgnoreCase("EditBlog")){
                request.setAttribute("idB", request.getParameter("id"));
                request.getRequestDispatcher("proyecto/Blog/modificar.jsp").forward(request, response);
            }else if (accion.equalsIgnoreCase("ActBlog")) {
                String id=request.getParameter("idBlog");
                String dest=request.getParameter("destino");
                String desc=request.getParameter("descripcion");
                String img=request.getParameter("imagen");
                
                bdao.Modificar(id, dest, desc, img);
                request.getRequestDispatcher("administrador.jsp").forward(request, response);
        }
            if(accion.equalsIgnoreCase("EditEmp")){
                request.setAttribute("idEmp", request.getParameter("id"));
                request.getRequestDispatcher("proyecto/Empleado/modificar.jsp").forward(request, response);
            }else if (accion.equalsIgnoreCase("ActEmp")) {
                String id=request.getParameter("idEmpleado");
                String nom=request.getParameter("nombre");
                String ape=request.getParameter("apellido");
                String dni=request.getParameter("dni");
                String tel=request.getParameter("telefono");
                String use=request.getParameter("email");
                String pas=request.getParameter("passw");
                
                edao.Modificar(id, nom, ape, dni, tel, use, pas);
                System.out.println("holaaaa");
                request.getRequestDispatcher("administrador.jsp").forward(request, response);
        }        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
