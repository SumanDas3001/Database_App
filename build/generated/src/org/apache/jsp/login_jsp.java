package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <!-- Latest compiled and minified CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("        <!-- jQuery library -->\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Popper JS -->\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Latest compiled JavaScript -->\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js\"></script>\n");
      out.write("        \n");
      out.write("        <title>LOGIN</title>\n");
      out.write("        \n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function showAlert()\n");
      out.write("            {\n");
      out.write("            alert(\"Hi This is Simple alert\");\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow\">\n");
      out.write("            <h5 class=\"my-0 mr-md-auto font-weight-normal\">TITLE & BLOG</h5> \n");
      out.write("        </div>\n");
      out.write("        <div class=\"jumbotron text-center\">\n");
      out.write("            <h1 class=\"h3 mb-3 font-weight-normal\">Please sign in</h1>\n");
      out.write("            <!--<img class=\"mb-4\" src=\"https://getbootstrap.com/assets/brand/bootstrap-solid.svg\" alt=\"\" width=\"72\" height=\"72\"> -->\n");
      out.write("            <center>\n");
      out.write("                <form name=\"f1\" action=\"logindb\">\n");
      out.write("                    <!--<h1 class=\"h3 mb-3 font-weight-normal\">Please sign in</h1>-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <div class=\"col-md-4 mb-3\">\n");
      out.write("                            <label for=\"disabledTextInput\" class=\"sr-only\">Enter User Id</label>\n");
      out.write("                            <input type=\"text\" id=\"inputEmail\" name=\"id\" class=\"form-control\" placeholder=\"Enter User Id\" required autofocus>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-4 mb-3\">\n");
      out.write("                            <label for=\"inputPassword\" class=\"sr-only\">Password</label>\n");
      out.write("                            <input type=\"password\" id=\"inputPassword\" name=\"pass\" class=\"form-control\" placeholder=\"Enter Password\" required>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-4 mb-3\">\n");
      out.write("                            <button class=\"btn btn-primary btn-block\" type=\"submit\">Login</button>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-4 mb-3\">  \n");
      out.write("                            <a href=\"register.jsp\">@Register</a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-4 mb-3\">  \n");
      out.write("                            <p>Created in @2018</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </center>\n");
      out.write("        </div>\n");
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
