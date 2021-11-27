<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="Connection.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.IOException, java.io.PrintWriter, java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<title>Admin Page</title>
</head>
<body>
<div id="header">
<div id="e-learning5"><a href="#"><img src="images/e-learning5.jpg" title="OLRMS" alt="OLRMS" border="0" height="300" width="700" /></a></div>
<li><span> E-learning :</span> </li>
<script type="text/javascript">
function sure(){
	if(confirm("Are you sure you want to Log Out")){
		window.location.href="alogout.jsp"
	}
	else{
		return false;
	}
}
</script>


<ul class="menu">
<li class="home"><a href="#" title="Home Page">Home</a></li>
<li class="courses"><a href="#" title="courses">courses</a></li>
<li class="specials"><a href="#" title="Specials">specials</a></li>
<li class="account"><a href="#" title="My Account">Account</a></li>
<li class="contact"><a href="#" title="Contact Us">Contacts</a></li>
</ul>
</div>
<div id="content">
<div id="leftPan">
<div id="categories">
<h2></h2>
<ul>
 
 <li><a href="/Courses/default.asp">Course Gallery</a></li>
 <ul type="circle"></ul>
 <li><a href ="cloud.html">Cloud</a></li>
  <li><a href ="dbms.html">DBMS</a></li>
   <li><a href ="software_eng.html">Software_eng</a></li>
    <li><a href ="data_structure.html">Data_structure</a></li>
     <li><a href ="networks.html">Networks</a></li>
      <li><a href ="network_security.html">Network_security</a></li>
       <li><a href ="c_prog.html">C_prog</a></li>
</ul>
 
</ul>
</div>
</div>


<%
int flag=0;
/*String id=request.getParameter("n1");
String pass=request.getParameter("n2");
session.setAttribute("sesname",id);
PreparedStatement pst1=conn.prepareStatement("select id,pass from login where  id=? and pass=?");
pst1.setString(1, id);
pst1.setString(2, pass);
ResultSet rs=pst1.executeQuery();
while(rs.next())
{
	String a=rs.getString(1);
	String b=rs.getString(2);
	//out.println(a);
	//out.println(b);
if(id.equals(a) && (pass.equals(b)))
{
	flag=1;
}
else
{
	flag=0;
}
}*/
try {
	// Admin login
		  PrintWriter pw=response.getWriter();	  	
		  	
		  // Session to accept the values
		  String aid=(String)session.getAttribute("id");
		  String apass=(String)session.getAttribute("pass");
		  
		   out.println(aid);
		  	
		  PreparedStatement pst = conn.prepareStatement("select * from login where id='"+aid+"' and pass='"+apass+"'");
		 // out.println("select * from admin_log where admin_id='"+uid+"' and 
	     // admin_pass='"+pass+"'");
		  ResultSet rs=pst.executeQuery();
	  	  if (rs.next())// && user.equals("admin")) 
	  	  {
		 	pw.println("<html><body><h3>");
		  	pw.println(" Welcome Admin");
		  	pw.println("</h3></body></html>");
		  	
		  	
	  	 } 
	// invalid admin   		
		 
	else 
		  {
	pw.println("<html><body text=\"red\">");   
			pw.println("<h3>Invalid Admin........</h3>");
			pw.println("<br>Press BACK OR Wait for 5 seconds.. It will automatically redirect to the login page");
	  		
	        pw.println("</body></html>");
		}  
	}
	catch(Exception e) {

	}	  
%>
<font size=12><a href="admlog.html">click here...</font></a>

<div id="log" style="margin: 100px; padding:20px; border: 1px solid black; float:left;">
<p><a href="#">HOME</a> | <a href="#">ABOUT
US</a> |  <a href="#">CONTACTS</a><br />
Copyright © 2016 ALL RESERVED. Designed by <a href="">SUNA</a></p>
<p><a href="">Supported by </a><a href="" target="_blank">Olrms.com</a></p>
</div>
</body>
</html>