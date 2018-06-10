<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>USER POST</title>
    </head>
    <body>
        
        <%
            
            if(session.getAttribute("userid")==null)
            {
                response.sendRedirect("login.jsp");
            }
            
            String uname;
            String userid;
            uname = (String)session.getAttribute("username");
            userid =(String)session.getAttribute("userid");
            //out.print("Hi " + uname +" your id is" + userid);
        %>
     
        <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
            <h5 class="my-0 mr-md-auto font-weight-normal">TITLE & BLOG</h5>
            <nav class="my-2 my-md-0 mr-md-3">
                <a class="p-2 text-dark" href="#">Hi <c:out value="${sessionScope.username}"/></a>
                <a class="p-2 text-dark" href="about.jsp">Home</a>
                <a class="p-2 text-dark" href="profile.jsp">Create Blog</a>
            </nav>
            <a class="btn btn-outline-primary" href="logout">Sign up</a> 
        </div>
                    
         
        <%
            Connection con = null;
            Statement sta = null;
            ResultSet rs = null;
            ResultSet rs1 = null;
            int k = 0;
            String utitle = null;
            String ubody = null;
            String blogid = null;
            try
            {
                Class.forName("com.mysql.jdbc.Driver"); 
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/suman","root","");
                sta = con.createStatement();
                
                String ss = "select blogid, title, body from blog where userid='"+userid+"'";
                rs = sta.executeQuery(ss);
                
                if(rs.next())
                {
                    k=1;
                }
                
                if(k == 1)
                {
                    rs1 = sta.executeQuery(ss);
                    
                    out.println("<html>");
                        out.println("<body>");
                            out.println("<div class='container'>");
                                out.println("<h1></h1>");
                                    out.println("<table class='table table-hover'");
                                        out.println("<thead>");
                                            out.println("<tr>");
                                            out.println("<th>Title</th>");
                                            out.println("<th>Body</th>");
                                            out.println("<th>Edit</th>");
                                            out.println("<th>Delet</th>");
                                            out.println("</tr>");
                                        out.println("</thead>");
                                        while(rs1.next())
                                        {
                                            out.println("<tbody>");
                                                out.println("<tr><td>" + rs1.getString(2) + "</td>");
                                                out.println("<td>"+ rs1.getString(3) + "</td>");
                                                out.println("<td><a href='edit.jsp?blogid="+ rs1.getString(1) + "'>Edit</a></td>");
                                                out.println("<td><a href='delete.jsp?blogid="+ rs1.getString(1)+"'>Delete</a></td></tr>");
                                            out.println("</tbody>");
                                        }
                                    out.println("</table>");
                            out.println("</div>");
                        out.println("</body>");
                    out.println("</html>");
                }
               
                else
                {
                    out.print("<center><h1>You don't have any post!</h1></center>");
                }
            }
            catch(Exception e)
            {
                out.print("Error " + e.getMessage());
            }
            
        %>
        
        
        <%-- <c:out value="${session.username}"></c:out> --%>
    </body>
</html>
