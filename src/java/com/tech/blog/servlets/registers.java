/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.tech.blog.servlets;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.Users;
import com.tech.blog.entities.message;
import com.tech.blog.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class registers extends HttpServlet {
    public static int f=0;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            /* TODO output your page here. You may use following sample code. */
            String n=request.getParameter("user_name");
            String e=request.getParameter("user_email");
            String p=request.getParameter("user_password");
            Users user=new Users(n,e,p);
            UserDao dao=new UserDao(ConnectionProvider.getConnection());
           
           if(dao.loginbypassword(e,p)!=null){
                message msg=new message("Already Exists","success","already");
                HttpSession s=request.getSession();
               s.setAttribute("msg",msg);
               response.sendRedirect("index.jsp");    
           }

           else if(dao.saveuser(user)){
               
                message msg=new message("successfully registered","success","registered");
               HttpSession s=request.getSession();
               s.setAttribute("msg",msg);
                s.setAttribute("user",user);
                  s.setAttribute("place","all");
                   s.setAttribute("theme","no");
                 s.setAttribute("subplace","no");
                response.sendRedirect("index.jsp");  
            }
            else{
                message msg=new message("failed to register","success","failed");
               HttpSession s=request.getSession();
               s.setAttribute("msg",msg);
                response.sendRedirect("index.jsp"); 
           
            }
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
