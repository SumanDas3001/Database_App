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
            String bid = request.getParameter("blogid");
            Connection con = null;
            Statement sta = null;
            ResultSet rs = null;
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/suman","root","");
                sta = con.createStatement();
                
                int j = sta.executeUpdate("delete from blog where blogid ='"+bid+"'");
                
                //PreparedStatement preparedStmt = con.prepareStatement(query);
                //preparedStmt.setInt(1, 3);
                
                if(j>0)
                {
                    RequestDispatcher dispatcher = request.getRequestDispatcher("welcome.jsp");
                    dispatcher.forward(request, response);
                }
                else
                {
                    out.println("Data is not deleted");
                }
                
            }
            catch(Exception e)
            {
                out.println("Error " + e.getMessage());
            } 
        %>
    </body>
</html>
