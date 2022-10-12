package com.servlet;

import com.dao.saveuser;
import com.entities.user;
import com.helper.connection_provider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class signup_details extends HttpServlet 
{

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) 
        {
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String role = request.getParameter("role");
            String college = request.getParameter("college");
            if(role==null || firstname==null || email==null)
            {
                out.println("Values");
                out.println(role);
                out.println(firstname);
                out.println(email);
            }
            else if(password.length()<8)
            {
                out.println("PassShort");
            }
            else
            {
                user u = new user(firstname, lastname, email, password, role, college);
                saveuser save = new saveuser(connection_provider.getConnection());
                boolean c = save.saveUserData(u);
                if(c==true)
                {
                    out.println("Registered successfully as a/an " + role);
                }
                else
                {
                    out.println("Present");
                }
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
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
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
