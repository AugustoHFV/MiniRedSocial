/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Persona;
import Modelo3.Persona3;
import ModeloDAO.PersonaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
     String consultar="consultar.jsp";
    String registrar="Registrar.jsp";
    String editar="editar.jsp";
   
    Persona p= new Persona();
    Persona3 p3= new Persona3();
    PersonaDAO pd= new PersonaDAO();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
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
        String acceso="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("consultar")){
            acceso=consultar;
        }
        else if(action.equalsIgnoreCase("registrar")){
            acceso=registrar;
        }
        else if(action.equalsIgnoreCase("Agregar")){
            try{
                String N=request.getParameter("N");
                String A=request.getParameter("A");
                String CE=request.getParameter("CE");
                String U=request.getParameter("U");
                String C=request.getParameter("C");
                p.setNombre(N);
                p.setApellido(A);
                p.setCR(CE);
                p.setUsuario(U);
                p.setContraseña((C));
                pd.registrar(p);
                } catch (Exception e ) {
                    response.sendRedirect("index.jsp");
            }
        }
        else if(action.equalsIgnoreCase("Editar")){
            try{
                processRequest(request, response);
                PrintWriter out = response.getWriter();
                HttpSession sesion=request.getSession();
                String N=request.getParameter("N");
                String A=request.getParameter("A");
                String CE=request.getParameter("CE");
                String U=request.getParameter("U");
                String C=request.getParameter("C");
                String U1=(String) sesion.getAttribute("usuarioSesion");
                p3.setNombre(N);
                p3.setApellido(A);
                p3.setCR(CE);
                p3.setUsuario(U);
                p3.setContraseña((C));
                p3.setNombre1(U1);
                pd.editar(p3);
                sesion.setAttribute("usuarioSesion",U);
                sesion.setAttribute("contra",C);
            } catch (Exception e ) {
                response.sendRedirect("index.jsp");
            }
        }
        else if(action.equalsIgnoreCase("Cerrar Sesión")){
            try{
                processRequest(request, response);
                PrintWriter out = response.getWriter();
                HttpSession sesion=request.getSession();
                sesion.setAttribute("usuarioSesion",null);
                sesion.setAttribute("contra",null);
            } catch (Exception e ) {
                response.sendRedirect("index.jsp");
            }
        }
            
        
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
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
    }
}    



