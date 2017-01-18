package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<!DOCTYPE html >\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>\n");
      out.write("Admin Page...\n");
      out.write("</title>\n");
      out.write("<link rel=stylesheet href=\"stylesheet.css\" type=\"text/css\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<h1  > <img src=\"thapar.jpg\" style=\"float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;\">Online Attendance Management System</h1>\n");
      out.write("\n");
      out.write("<nav>\n");
      out.write("\t\t\t<a href=\"admin.jsp\">home</a>\n");
      out.write("\t\t\t<a href=\"adminclass.jsp\">class</a>\n");
      out.write("\t\t\t<a href=\"adminfaculty.jsp\">faculty</a>\n");
      out.write("\t\t\t<a href=\"adminstudent.jsp\">student</a>\n");
      out.write("                        <a href=\"adminlogout.jsp\">Logout</a>\n");
      out.write("</nav>    \n");
      out.write("\n");
      out.write("<h2>Admin Home Page...</h2>\n");
      out.write("<center >\n");
      out.write("<div style=\"border:1px solid #D40400; height:30%;width:30%;\">\n");
      out.write("\n");

    out.println("You Are Welcome");
    out.print("<br/>");
    String userId= (String) session.getAttribute("userid");
    out.println(userId);
    
      out.write("\n");
      out.write("\t</div>\n");
      out.write("</center>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"clear\">\n");
      out.write("</div>\n");
      out.write("<br/>\n");
      out.write("<!--<center>\n");
      out.write("<footer >\n");
      out.write("&copy Amandeep Dhiman\n");
      out.write("</footer>\n");
      out.write("</center>-->\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
