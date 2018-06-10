package JavaFile;

import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import daconnection.dbclass;


public class registerdb extends HttpServlet 
{

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        Connection con = null;
        Statement sta = null;
        
        //dbclass obj = new dbclass();
        
        try 
        {
           Class.forName("com.mysql.jdbc.Driver"); 
           
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/suman","root","");
           sta = con.createStatement();
           
           String uid = request.getParameter("id");
           String uname = request.getParameter("name");
           String pass = request.getParameter("pass");
            
           int i = sta.executeUpdate("Insert into user values('"+uid+"','"+uname+"','"+pass+"')");
           if(i>0)
               out.println("Inserted successfully");
           else
           {
               out.println("Insert Unsuccessfully");
           }
           
        } 
        catch(Exception e)
        {
            out.print("Error "+e.getMessage());
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
