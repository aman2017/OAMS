package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addsemester_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!Doctype html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>Add New Faculty\n");
      out.write("</title>\n");
      out.write("<link rel=stylesheet href=\"stylesheet.css\" type=\"text/css\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\t<div>\n");
      out.write("\t<h1  > <img src=\"thapar.jpg\" style=\"float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;\">Online Attendance Management System</h1>\n");
      out.write("</div>\n");
      out.write("<nav>\n");
      out.write("\t\t\t<a href=\"admin.jsp\">home</a>\n");
      out.write("\t\t\t<a href=\"classdetails.jsp\">class</a>\n");
      out.write("\t\t\t<a href=\"adminfaculty.jsp\">Faculty</a>\n");
      out.write("\t\t\t<a href=\"adminstudent.jsp\">Student</a>\n");
      out.write("                        <a href=\"adminlogout.jsp\">Logout</a>\n");
      out.write("</nav>   \n");
      out.write("<h2>Add New Semester </h2>\n");
      out.write("<br/>\n");
      out.write("        <div style=\"margin-left:300px;\">\n");
      out.write("    <fieldset style=\"box-shadow: 10px 10px 10px #bbb;  border-radius: 10px; width: 30%; height: 420pt;\" >\n");
      out.write("        <legend style=\"background-color:  #F40000; \"> Faculty Registration </legend>\n");
      out.write("<form method=\"post\" action=\"adminaddfaculty.jsp\">\n");
      out.write("    <p> <b> Please Enter Unique/Valid Faculty ID Only</b></p>\n");
      out.write("    <p> <b>Faculty ID : </b></p> <input type=\"text\" name=\"facultyid\" placeholder=\"Enter Faculty ID Please\">\n");
      out.write("    <p> <b>Faculty Password : </b></p> <input type=\"password\" name=\"password\" placeholder=\"Enter Faculty Password Please\">\n");
      out.write("    <p> <b>Faculty Mobile : </b></p> <input type=\"text\" name=\"mobile\" placeholder=\"Enter Faculty Mobile Please\">\n");
      out.write("    <p> <b>Faculty Sex </b></p> <input type=\"text\" name=\"sex\" placeholder=\"Enter Faculty Gender Please\">\n");
      out.write("    <p> <b>Faculty Email </b></p> <input type=\"email\" name=\"email\" placeholder=\"Enter Faculty Email Please\">\n");
      out.write("    <p> <b>Faculty Address </b></p> <input type=\"text\" name=\"address\" placeholder=\"Enter Faculty Address Please\">    \n");
      out.write("<center>\n");
      out.write("<br/>\n");
      out.write("<br/>\n");
      out.write("<input type=\"submit\" name=\"submit\" style= \"float: right; background-color:#f40000 ; width: 100px;border:1px solid white; border-bottom:3px solid white;  color:white;\"> \n");
      out.write("</center>\n");
      out.write("</form>\n");
      out.write("</fieldset >\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"clear\">\n");
      out.write("</div>\n");
      out.write("<br/>\n");
      out.write("<br/>\n");
      out.write("<br/>\n");
      out.write("<center>\n");
      out.write("<footer >\n");
      out.write("&copy Amandeep Dhiman\n");
      out.write("</footer>\n");
      out.write("</center>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
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
