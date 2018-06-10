package JavaFile;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;


public class logindb extends HttpServlet 
{

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        Connection con = null;
        Statement sta = null;
        ResultSet rs1 = null;
        ResultSet rs2 = null;
        
        String uname = null;
        String userid = null;
        int i=0;
        
        try 
        {
           Class.forName("com.mysql.jdbc.Driver"); 
           
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/suman","root","");
           
           sta = con.createStatement();
           
           String uid = request.getParameter("id");
           String upass = request.getParameter("pass");
           
           String ss = "select name, id from user where id='"+uid+"' and password='"+upass+"'";
        
           rs1 = sta.executeQuery(ss);
           if(rs1.next())
           {
               i=1;
           }
           if(i==1)
           {
               rs2 = sta.executeQuery(ss);
               while(rs2.next())
               {
                   uname = rs2.getString(1);
                   userid = rs2.getString(2);
                   
               }
               HttpSession session = request.getSession(true);
               session.setAttribute("username", uname);
               session.setAttribute("userid",userid );
               
               //out.print("login success");
                RequestDispatcher dispatcher = request.getRequestDispatcher("about.jsp");
                dispatcher.forward(request, response);
           }
           else
           {
               out.println("Login failure...");
           }
        } 
        catch(Exception e)
        {
            out.println("Error "+e.getMessage());
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
