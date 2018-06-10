<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <head>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
            <h5 class="my-0 mr-md-auto font-weight-normal">TITLE & BLOG</h5>
            <nav class="my-2 my-md-0 mr-md-3">
                <a class="p-2 text-dark" href="#">Hi <c:out value="${sessionScope.username}"/></a>
                <a class="p-2 text-dark" href="about.jsp">Home</a>
                <a class="p-2 text-dark" href="welcome.jsp">Post</a>
                <a class="p-2 text-dark" href="profile.jsp">Create Blog</a>
                <!--<a class="p-2 text-dark" href="logout">Logout</a> -->
            </nav>
          <a class="btn btn-outline-primary" href="logout">Sign up</a> 
        </div>
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
                
                String ss = "Select title, body from blog where blogid ='"+bid+"'";
                rs = sta.executeQuery(ss);
                
                out.println("<html>");
                out.println("<body>");
                out.println("<form method='get' action ='update.jsp'>");
                while(rs.next())
                {
                    out.println("<div class='container'>");
                        
                        out.println("<div class='form-group'>");
                            out.println("<label for='usr'>Title:</label>");
                            out.println("Title:<input type='text' class='form-control is-valid' name='t1' placeholder='Enter title' value='"+rs.getString(1) +"'><br>");
                        out.println("</div>");
                            out.println("<label for='comment'>Body:</label>");
                            out.println("<input type='text' class='form-control is-valid' placeholder='Enter Body' name='t2' value='"+rs.getString(2)+"'><br>");
                            out.println("<input type='hidden' name='t3' value='"+bid+"'>");
                            out.println("<button class='btn btn-primary btn-block' type='submit'>Update</button>");
                        
                    out.println("</div>");
                }
                out.println("</form>");
                out.println("</body>");
                out.println("</html");
               
               
            }
            catch(Exception e)
            {
                out.println("Error " + e.getMessage());
            }
        %>
    </body>
</html>
