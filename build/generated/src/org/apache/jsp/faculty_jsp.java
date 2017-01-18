package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class faculty_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html >\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>\r\n");
      out.write("Faculty Page...\r\n");
      out.write("</title>\r\n");
      out.write("<link rel=stylesheet href=\"stylesheet.css\" type=\"text/css\">\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div>\r\n");
      out.write("\t<div>\r\n");
      out.write("\t<h1  > <img src=\"thapar.jpg\" style=\"float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;\">Online Attendance Management System</h1>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<nav>\r\n");
      out.write("\t\t\t<a href=\"faculty.jsp\">home</a>\r\n");
      out.write("\t\t\t<a href=\"attendance.jsp\">attendance</a>\r\n");
      out.write("\t\t\t<a href=\"uploadnotice.jsp\">upload notice</a>\r\n");
      out.write("                        <a href=\"logout.jsp\">Log out</a>\r\n");
      out.write("</nav>    \r\n");
      out.write("\r\n");
      out.write("    <h2> Faculty Home Page...</h2>\r\n");
      out.write("<center >\r\n");
      out.write("<div style=\"border:1px solid #D40400; height:30%;width:30%;\">\r\n");

    out.println("You Are Welcome");
    out.print("<br/>");
    String userId= (String) session.getAttribute("userid");
    
    out.println(userId);
	
    
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("</center>\r\n");
      out.write("\r\n");
      out.write("<br/>\r\n");
      out.write("    <div class=\"clear\">\r\n");
      out.write("</div>\r\n");
      out.write("<br/>\r\n");
      out.write("<br/>\r\n");
      out.write("<br/>\r\n");
      out.write("<!--<center>\r\n");
      out.write("<footer >\r\n");
      out.write("&copy Amandeep Dhiman\r\n");
      out.write("</footer>\r\n");
      out.write("</center>-->\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
