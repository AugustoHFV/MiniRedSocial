/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador2;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import javax.servlet.http.HttpSession;
import Modelo2.Persona2;
import ModeloDAO2.PersonaDAO2;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Controlador2", urlPatterns = {"/Controlador2"})
public class Controlador2 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
     String consultar="consultar2.jsp";
    String registrar="registrar2.jsp";
    String editar="editar2.jsp";
    String coment="registrar2.jsp";
   
    Persona2 p= new Persona2();
    PersonaDAO2 pd= new PersonaDAO2();
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
        else if(action.equalsIgnoreCase("Comentar")){
            try{
                request.setAttribute("Para",request.getParameter("Usu"));
                acceso=coment;
            } catch (Exception e ) {
                response.sendRedirect("index.jsp");
            }
        }
        else if(action.equalsIgnoreCase("Eliminar")){
            try{
                String C=(String) request.getParameter("Com");
                pd.eliminar(C);
            } catch (Exception e ) {
                response.sendRedirect("index.jsp");
            }
        }
        else if(action.equalsIgnoreCase("Agregar")){
            try{
                processRequest(request, response);
                PrintWriter out = response.getWriter();
                HttpSession sesion=request.getSession();
                String C=request.getParameter("C");
                String De=(String) sesion.getAttribute("usuarioSesion");
                String Para=(String) sesion.getAttribute("Para");
                Boolean comp=true;
                if(De.equalsIgnoreCase(Para))
                {
                    comp=false;
                }
                if(De!=null && comp==true)
                {
                    p.setComentario((C));
                    p.setUsuario((De));
                    p.setUsuario1((Para));
                    pd.registrar(p);
                }
                else
                {
                }
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
    }// </editor-fold>

}
