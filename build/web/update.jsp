<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection con = null;
            Statement sta = null;
            ResultSet rs = null;
            
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/suman","root","");
                sta =  con.createStatement();
                
                String utitle = null;
                String ubody = null;
            
                utitle = request.getParameter("t1");
                ubody = request.getParameter("t2");
                String hidden = request.getParameter("t3");
                
                HttpSession session1 = request.getSession(false);
                String userid = (String)session1.getAttribute("userid");
                
               
                int k = sta.executeUpdate("update blog set title='"+utitle+"', body='"+ubody+"', userid='"+userid+"' where blogid='"+hidden+"'");
                if(k>0)
                {
                    RequestDispatcher dispatcher = request.getRequestDispatcher("welcome.jsp");
                    dispatcher.forward(request, response);
                }
                else
                {
                    out.println("Not success");
                }
                
            }
            catch(Exception e)
            {
                out.println("Error " + e.getMessage());
            }
            
       %>
     </body>
</html>
