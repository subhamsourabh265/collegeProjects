/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.41
 * Generated at: 2016-05-12 06:31:18 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class view1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 Connection conn=null;
Statement pst1=null; int s1;
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

      out.write('\r');
      out.write('\n');
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
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>VIEW ACCOUNT DETAILS</title>\r\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"top_links\">\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("<div id=\"header\">\r\n");
      out.write("\t<h1>STUDENT BANK<span class=\"style1\"></span></h1>\r\n");
      out.write("    <h2>Online Service</h2>\r\n");
      out.write(" </div>\r\n");
      out.write("<br><br>\r\n");
      out.write("<form name=\"form1\" method=\"post\" action=\"myupdate.jsp\">\r\n");
      out.write("  <p> <font size =6 color = \"white\">ACCOUNT NUMBER</font>\r\n");
      out.write("\r\n");
      out.write("<select name=\"n1\">\r\n");
try{
	pst1=conn.createStatement();
	ResultSet rs1=pst1.executeQuery("Select * from ACCOUNT"); 
 while(rs1.next()){
     s1=rs1.getInt(1);
   
      out.write("\r\n");
      out.write("   <option  onclick=\"this.form.submit()\" value=\"");
      out.print(s1);
      out.write('"');
      out.write('>');
      out.print(s1);
      out.write("</option>\r\n");
      out.write("  ");
  }
	   rs1.close();
    
      out.write("\r\n");
      out.write("\r\n");
      out.write("</select>\r\n");
}catch(Exception e){}
      out.write("\r\n");
      out.write("  </p>\r\n");
      out.write("  <p>\r\n");
      out.write("   <input type=\"submit\" name=\"Submit\" value=\"Submit\">\r\n");
      out.write(" </p>\r\n");
      out.write("</form>\r\n");
      out.write("<br><br><br><br><br><br><br><br>\r\n");
      out.write("<A HREF = \"homepage.html\"><FONT COLOR = \"WHITE\" SIZE = 6>HOMEPAGE</FONT></A>\r\n");
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
