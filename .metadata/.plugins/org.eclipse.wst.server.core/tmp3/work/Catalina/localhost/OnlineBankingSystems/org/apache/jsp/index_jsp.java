/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.41
 * Generated at: 2016-05-15 11:07:11 UTC
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
import java.io.*;
import javax.servlet.*;
import g.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("<title>Global Banking ..</title>\r\n");
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
      out.write("    <li><a href=\"adminlogin.html\">ADMIN LOGIN</a></li>\r\n");
      out.write("    <li><a href=\"create.html\">NEW ACCOUNT</a></li>\r\n");
      out.write("    <li><a href=\"balance1.jsp\">BALANCE</a></li>\r\n");
      out.write("    <li><a href=\"deposit1.jsp\">DEPOSIT</a></li>\r\n");
      out.write("    <li><a href=\"withdraw1.jsp\">WITHDRAW</a></li>\r\n");
      out.write("    <li><a href=\"transfer1.jsp\">TRANSFER</a></li>\r\n");
      out.write("    <li><a href=\"closeac1.jsp\">CLOSE A/C</a></li>\r\n");
      out.write("    <li><a href=\"about.jsp\">Contact Us</a></li>\r\n");
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
      out.write("       </div>\r\n");
      out.write("\t</td>\r\n");
      out.write("    \r\n");
      out.write("    <td width=\"1200\" valign=\"top\">\r\n");
      out.write("    \t\r\n");
      out.write("    \t");
 

      out.write("\r\n");
      out.write("<table>");


try {
		    Connection con1=GetCon.getCon();
			//PreparedStatement ps1=con1.prepareStatement("Select max(accountno) from newaccount");
			PreparedStatement ps1=con1.prepareStatement("Select max(accountno) from account");
           
            ResultSet rs1=ps1.executeQuery();
            while(rs1.next()){
				int  accountno=rs1.getInt(1);
				request.setAttribute("accountno",accountno);
				}
		    Integer accountno=(Integer)request.getAttribute("accountno");
			Connection con=GetCon.getCon();
			PreparedStatement ps=con.prepareStatement("Select * from ACCOUNT where accountno='"+accountno+"'");
           // ps.setInt(1,accountno);
			ResultSet rs=ps.executeQuery();
			
			out.print("<table align='left'  cellspacing='5' cellpadding='5'>");
			out.print("<tr><th>ACCOUNT NO</th><th>USERNAME</th><th>PASSWORD</th><th>AMOUNT</th><th>ADDRESS</th><th>PHONE</th></tr>");
			while(rs.next()){
				out.println("WELCOME!  <B>" +rs.getString(2)+"</B> <br>YOUR ACCOUNT HAS OPENED");
				out.println("<br><br>PLZ  CHECK  YOUR  ACCOUNT DETAILS");
				
				session.setAttribute("accountno",accountno);
				
				System.out.print(accountno);
				out.print("<tr>");
				out.print("<td>" + rs.getInt(1) + "</td>");
				out.print("<td>" + rs.getString(2) + "</td>");
				out.print("<td>" + rs.getString(3) + "</td>");
				out.print("<td>" + rs.getInt(5) + "</td>");
				
				out.print("<td>" + rs.getString(6) + "</td>");
				out.print("<td>" + rs.getLong(7) + "</td>");
				
				
				//out.print("<td><a href='DeleteServlet' >Delete</a></td>");
			    
				out.print("</tr>");
			    
			}
			out.print("</table>");
			
			/*out.print("<table align='right'width='40%'>");
			out.print("<tr><td><a href='Compose.html'>COMPOSE</a></td></tr>");
			out.print("<tr><td><a href='InboxServlet'>INBOX</a></td></tr>");
			out.print("<tr><td><a href='LogoutServlet'>LOGOUT</a></td></tr>");
			//out.print("<tr><td><a href='DeleteServlet'>Delete</a></td></tr>");
			
			out.print("</table>");*/
		} catch (SQLException e) {
			e.printStackTrace();
		}
   
			
      out.write("</table>");


      out.write("\r\n");
      out.write("    \t\r\n");
      out.write("    \t\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
