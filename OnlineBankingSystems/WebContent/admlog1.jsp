<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="connect1.jsp"%>
<%@ page import="java.io.IOException, java.io.PrintWriter, java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrator Login</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body style="background-color:lightgreen ">
<%
try {
// Admin login
	  PrintWriter pw=response.getWriter();	  	
	  	
	  // Session to accept the values
	  String id=(String)session.getAttribute("id");
	  String password=(String)session.getAttribute("password");
	  	
	  PreparedStatement pst = conn.prepareStatement("select * from ADMIN where id='"+id+"' and password='"+password+"'");
	 // out.println("select * from admin_log where admin_id='"+uid+"' and 
     // admin_pass='"+pass+"'");
	  ResultSet rs=pst.executeQuery();
  	  if (rs.next())// && user.equals("admin")) 
  	  {
	 	pw.println("<html><body><h3>");
	  	pw.println(" WELCOME  ADMIN");
	  	pw.println("<br><br>  Mr. <b>"+id+"</b>");
	  	pw.println("<br><br><br><br><br><a href=\"admlog.html\">CLICK  HERE </a>");
	  	pw.println("</h3></body></html>");
  	  }
// invalid admin   		
	 
else 
	  {
pw.println("<html><body text=\"red\">");   
		pw.println("<h1>INVALID  ADMIN</h1>");
		pw.println("<br><FONT SIZE = 5>PRESS BACK OR WAIT FOR 5 SECONDS....IT WILL  AUTOMATICALLY  REDIRECT  TO  LOGIN  PAGE</FONT>");
  		response.setHeader("Refresh","5;url=adminlogin.html");
  		pw.println("<br><br><a href=\"adminlogin.html\"><FONT SIZE =  7>BACK</FONT></a>");
        pw.println("</body></html>");
	}  
}
catch(Exception e) {

}	  	
%>
</body>
</html>
