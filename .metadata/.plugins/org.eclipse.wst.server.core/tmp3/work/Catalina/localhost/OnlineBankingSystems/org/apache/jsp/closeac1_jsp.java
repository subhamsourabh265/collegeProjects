/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.41
 * Generated at: 2016-05-12 06:25:23 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class closeac1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 Connection conn=null;
  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/connect1.jsp", Long.valueOf(1448811316161L));
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t");
      out.write('\r');
      out.write('\n');
      out.write('	');
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","sourabh");
		System.out.println("driver  found");
	}
	catch(Exception e) {
System.out.println("driver not found");
}
	
      out.write(" \r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<SCRIPT LANGUAGE=\"JavaScript\">\r\n");
      out.write("function dil(form)\r\n");
      out.write("{\r\n");
      out.write("   for(var i=0; i<form.elements.length; i++)\r\n");
      out.write("   {\r\n");
      out.write("\t\tif(form.elements[i].value == \"\")\r\n");
      out.write("\t\t{\r\n");
      out.write("\t\t   alert(\"Fill out all Fields\")\r\n");
      out.write("\t\t   document.F1.accountno.focus()\r\n");
      out.write("\t\t   return false\r\n");
      out.write("\t\t}\r\n");
      out.write("   }\r\n");
      out.write("\r\n");
      out.write("   if(isNaN(document.F1.accountno.value))\r\n");
      out.write("   {\r\n");
      out.write("       alert(\"Accountno must  be  number & can't be null\")\r\n");
      out.write("\t   document.F1.accountno.value=\"\"\r\n");
      out.write("\t   document.F1.accountno.focus()\r\n");
      out.write("\t   return false\r\n");
      out.write("   }\r\n");
      out.write("   if(!isNaN(document.F1.username.value))\r\n");
      out.write("   {\r\n");
      out.write("       alert(\"User Name  must  be  char's & can't be null\")\r\n");
      out.write("\t   document.F1.username.value=\"\"\r\n");
      out.write("\t   document.F1.username.focus()\r\n");
      out.write("\t   return false\r\n");
      out.write("   }\r\n");
      out.write("\r\n");
      out.write("   if(!isNaN(document.F1.password.value))\r\n");
      out.write("   {\r\n");
      out.write("       alert(\"Password  must  be  char's & can't be null\")\r\n");
      out.write("\t   document.F1.password.value=\"\"\r\n");
      out.write("\t   document.F1.password.focus()\r\n");
      out.write("\t   return false\r\n");
      out.write("   }\r\n");
      out.write("   \r\n");
      out.write("   return true   \r\n");
      out.write("}\r\n");
      out.write("</SCRIPT>\r\n");
      out.write("\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("<title>Online  Banking ..</title>\r\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function ctck()\r\n");
      out.write("{\r\n");
      out.write("var sds = document.getElementById(\"dum\");\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div id=\"top_links\">\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("<div id=\"header\">\r\n");
      out.write("\t<h1>STUDENT BANK<span class=\"style1\"></span></h1>\r\n");
      out.write("    <h2>Online Service</h2>\r\n");
      out.write("    <A href=\"index.html\"><IMG SRC=\"images/home1.gif\"></IMG></A>\t\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div id=\"navigation\">\r\n");
      out.write("    <ul>\r\n");
      out.write("    <li><a href=\"create.html\">NEW ACCOUNT</a></li>\r\n");
      out.write("    <li><a href=\"balance1.jsp\">BALANCE</a></li>\r\n");
      out.write("    <li><a href=\"deposit1.jsp\">DEPOSIT</a></li>\r\n");
      out.write("    <li><a href=\"withdraw1.jsp\">WITHDRAW</a></li>\r\n");
      out.write("    <li><a href=\"transfer1.jsp\">TRANSFER</a></li>\r\n");
      out.write("    <li><a href=\"closeac1.jsp\">CLOSE A/C</a></li>\r\n");
      out.write("    <li><a href=\"about.jsp\">ABOUT US</a></li>\r\n");
      out.write("    </ul>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<table style=\"width:897px; background:#FFFFFF; margin:0 auto;\">\r\n");
      out.write("<tr >\r\n");
      out.write("\t<td width=\"300\" valign=\"top\" style=\"border-right:#666666 1px dotted;\">\r\n");
      out.write("    \t<div id=\"services\"><h1>Services</h1><br>\r\n");
      out.write("\t\t     <ul>\r\n");
      out.write("        \t<li><a href=\"#\">Online Account Creation</a></li>\r\n");
      out.write("            <li><a href=\"#\">Online access of account </a></li>\r\n");
      out.write("            <li><a href=\"#\">Online Money Transfer </a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("\t\t\t\r\n");
      out.write("       </div>\r\n");
      out.write("\t</td>\r\n");
      out.write("    \r\n");
      out.write("    <td width=\"1200\" valign=\"top\">\r\n");
      out.write("    \t<div id=\"welcome\" style=\"border-right:#666666 1px dotted;\"><h1>CLOSE ACCOUNT FORM</h1><br>\r\n");
      out.write("    \t    <table  align=\"center\" bgcolor=\"white\">\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td>\r\n");
      out.write("\t\t\t<div>");
if(request.getAttribute("balance")!=null)
			{
			out.print(request.getAttribute("balance"));
			}
			
			 
      out.write("</div>\r\n");
      out.write("\t\t\t\t<form name=F1 onSubmit=\"return dil(this)\" action=\"closeac.jsp\" >\r\n");
      out.write("\t\t\t\t     <table cellspacing=\"5\" cellpadding=\"3\">\r\n");
      out.write("\t\t\t\t    <tr><td>ACCOUNT NO:</td><td> <input type=\"text\" name=\"accountno\"/></td></tr>\r\n");
      out.write("\t\t\t\t\t<tr><td>USER NAME:</td><td> <input type=\"text\" name=\"username\"/></td></tr>\r\n");
      out.write("\t\t\t\t\t<tr><td>PASSWORD:</td><td> <input type=\"password\" name=\"password\"/></td></tr>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<tr><td></td><td><input type=\"submit\" value=\"Submit\"/>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("                   \r\n");
      out.write("                    <INPUT TYPE=RESET VALUE=\"CLEAR\"></td></tr>\r\n");
      out.write("                   \t</table>\r\n");
      out.write("\t\t\t\t</form>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t</table>\r\n");
      out.write("    \t   </div>      \r\n");
      out.write("    </td>\r\n");
      out.write("     <td width=\"299\" valign=\"top\">\r\n");
      out.write("    \t<div id=\"welcome\" style=\"border-right:#666666 1px dotted;\"><h1>Welcome</h1><br>\r\n");
      out.write("    \t    <center><img src=\"images/globe_10.gif\" alt=\"business\" width=\"196\" height=\"106\"></center><br>\r\n");
      out.write("\t\t    <p>Each people plan their site layouts depending upon their business type. Here comes a free designer template which provides you with a selection of different kinds of webdesign   starting from business template, fashion template, media template, Science template, Arts template and much more.</p>\r\n");
      out.write("\t    \t\r\n");
      out.write("\t    </div>      \r\n");
      out.write("    </td>\r\n");
      out.write("   \r\n");
      out.write("            \t\r\n");
      out.write("    \r\n");
      out.write("</tr></table>\r\n");
      out.write("    \r\n");
      out.write("<div id=\"footer_top\">\r\n");
      out.write("  <div id=\"footer_navigation\">\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("  </div>\r\n");
      out.write("  \r\n");
      out.write("  <div id=\"footer_copyright\" >\r\n");
      out.write(" \r\n");
      out.write("    \t    <center><img  alt=\"business\"  width=\"196\" height=\"106\"></center><br>\r\n");
      out.write("\t\t    <p>Each people plan their site layouts depending upon their business type. Here comes a free designer template which provides you with a selection of different kinds of webdesign   starting from business template, fashion template, media template, Science template, Arts template and much more.</p>\r\n");
      out.write("\t  \r\n");
      out.write("  Copyright © STUDENT BANK</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("document.onload = ctck();\r\n");
      out.write("</script>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
