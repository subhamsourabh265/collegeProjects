<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="connect1.jsp"%>
<%@ page import="java.io.IOException, java.io.PrintWriter, java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>member Login</title>
</head>
<body>

<%
try {
// Admin login
	  PrintWriter pw=response.getWriter();	  	
	  	
	  // Session to accept the values
	  String id=(String)session.getAttribute("id");
	  String password=(String)session.getAttribute("password");
	  
	  out.println(id);
	  out.println(password);
	  	
	  PreparedStatement pst = conn.prepareStatement("select *from member where id='"+id+"' and password='"+password+"'");
	 // out.println("select * from admin_log where admin_id='"+uid+"' and 
     // admin_pass='"+pass+"'");
	  ResultSet rs=pst.executeQuery();
  	  if (rs.next())// && user.equals("admin")) 
  	  {
	 	pw.println("<html><body><h3>");
	  	pw.println(" Welcome member");
	  	pw.println("</h3></body></html>");
  	  }
// invalid admin   		
	 
else 
	  {
pw.println("<html><body text=\"red\">");   
		pw.println("<h3>Invalid member........</h3>");
		pw.println("<br>Press BACK OR Wait for 5 seconds.. It will automatically redirect to the index page");
  		response.setHeader("Refresh","5;url=mylogin.html");
  		pw.println("<br><br><a href=\"mylogin.html\">BACK</a>");
        pw.println("</body></html>");
	}  
}
catch(Exception e) {

}	  	
%>
<a href="memlog.html">click here...</a>
</body>
</html>
