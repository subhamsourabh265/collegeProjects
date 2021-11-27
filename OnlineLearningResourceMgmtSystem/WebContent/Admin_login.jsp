<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="Connection.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<title>Admin Page</title>
</head>
<body>
<div id="header">
<div id="logo"><a href="#"><img src="images/logo.jpg" title="OLRMS" alt="OLRMS" border="0" height="55" width="262" /></a></div>
<ul class="cart">
<li><span> E-learning Cart:</span> 0 items</li>
</ul>
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

<ul class="currency">
<li class="twimage">
<a href="#" onclick="sure()"><img src="images/btn_logout.png" width="70" height="25" alt=""/></a>
</li>
</ul>
<ul class="menu">
<li class="home"><a href="index.html" title="Home Page">Home</a></li>
<li class="line"></li>
<li class="courses"><a href="#" title="courses">courses</a></li>
<li class="line"></li>
<li class="specials"><a href="#" title="Specials">specials</a></li>
<li class="line"></li>
<li class="account"><a href="#" title="My Account">Account</a></li>
<li class="line"></li>
<li class="contact"><a href="#" title="Contact Us">Contacts</a></li>
</ul>
</div>
<div id="content">
<div id="leftPan">
<div id="categories">
<h2></h2>
<ul>
 <li><a href="index.html">Home</a></li>
 <li><a href="/Courses/default.asp">Course Gallery</a></li>
 <li><a href ="cloud.html">Cloud</a></li>
  <li><a href ="dbms.html">DBMS</a></li>
   <li><a href ="software_eng.html">Software_eng</a></li>
    <li><a href ="data_structure.html">Data_structure</a></li>
     <li><a href ="networks.html">Networks</a></li>
      <li><a href ="network_security.html">Network_security</a></li>
       <li><a href ="c_prog.html">C_prog</a></li>

 
</ul>
</div>
</div>
<div id="log" style="margin: 100px; padding:20px; border: 1px solid black; float:left;">

<%
int flag=0;
String u_id1=request.getParameter("uname");
String pass1=request.getParameter("pass");
session.setAttribute("sesname", u_id1);
PreparedStatement pst1=conn.prepareStatement("select u_id,pass from login where u_id=?");
pst1.setString(1, u_id1);
ResultSet rs=pst1.executeQuery();
while(rs.next())
{
	String a=rs.getString(1);
	String b=rs.getString(2);
	//out.println(a);
	//out.println(b);
if(u_id1.equals(a) && (pass1.equals(b)))
{
	flag=1;
}
else
{
	flag=0;
}
}
if(flag==1)
{
	%>
	<h1>Welcome <%out.print(u_id1); %>!!!</h1>
	<p><a href="view_pdf.jsp">View resources</a><br></p>
	<p><a href="add_pdf.jsp">Upload resources</a><br></p>
	<p>
	<a href="delete_pdf.jsp">Delete resources</a><br></p>
	<% 
}
else
{%>
<h2><%
out.print("Wrong Username or Password");
%>
<a href="admin_login.html"> Login Again </a></h2>
<% 
}

pst1.executeUpdate();
pst1.close();
%>
</div>

</div>
<div class="clear"></div>
</div>


<div id="footer">

<p><a href="#">HOME</a> | <a href="#">ABOUT
US</a> |  <a href="#">CONTACTS</a><br />
Copyright © 2016 ALL RESERVED. Designed by <a href="">SUNA</a></p>
<p><a href="">Supported by </a><a href="" target="_blank">Olrms.com</a></p>
</div>
</body></html>