package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.servlet.http.HttpSession;
import java.sql.*;

public final class welcome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            
            if(session.getAttribute("userid")==null)
            {
                response.sendRedirect("login.jsp");
            }
            
            String uname;
            String userid;
            uname = (String)session.getAttribute("username");
            userid =(String)session.getAttribute("userid");
            out.print("Hi " + uname +" your id is" + userid);
         
      out.write("\n");
      out.write("         \n");
      out.write("         \n");
      out.write("         <a href=\"profile.jsp\">\n");
      out.write("            <input type=\"submit\" value=\"click here\">\n");
      out.write("         </a>\n");
      out.write("         \n");
      out.write("         \n");
      out.write("         <form action=\"logout\" method=\"get\">\n");
      out.write("            <input type=\"submit\" value=\"logout\">\n");
      out.write("        </form>\n");
      out.write("         \n");
      out.write("         \n");
      out.write("         ");

            Connection con = null;
            Statement sta = null;
            ResultSet rs = null;
            ResultSet rs1 = null;
            int k = 0;
            String utitle = null;
            String ubody = null;
            try
            {
                Class.forName("com.mysql.jdbc.Driver"); 
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/suman","root","");
                sta = con.createStatement();
                
                String ss = "select title, body from blog where userid='"+userid+"'";
                rs = sta.executeQuery(ss);
                
                if(rs.next())
                {
                    k=1;
                }
                
                if(k == 1)
                {
                    rs1 = sta.executeQuery(ss);
                    out.println("<html>");
                    out.println("<head>");  
                    out.println("</head>");
                    out.println("<body>");
                    out.println("<h1></h1>");
                    out.println("<table border='1'>");
                    out.println("<tr>");
                    out.println("<th>Title</th>");
                    out.println("<th>Body</th>");
                    out.println("</tr>");
                    while(rs1.next())
                    {
                        out.println("<tr><td>" + rs1.getString(1) + "</td>");
                        out.println("<td>"+ rs1.getString(2) + "</td></tr>");
                        
                    }
                    out.println("</table>");
                        out.println("</body>");
                        out.println("</html>");
                }
                /*
                else
                {
                    out.print("Data is not fetched ....");
                }*/
            }
            catch(Exception e)
            {
                out.print("Error " + e.getMessage());
            }
            
        
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        ");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
