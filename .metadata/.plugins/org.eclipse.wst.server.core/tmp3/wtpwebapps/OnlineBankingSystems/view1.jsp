<%@ page import="java.sql.*"%>
<%@include file="connect1.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VIEW ACCOUNT DETAILS</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="top_links">
  

<div id="header">
	<h1>STUDENT BANK<span class="style1"></span></h1>
    <h2>Online Service</h2>
 </div>
<br><br>
<form name="form1" method="post" action="myupdate.jsp">
  <p> <font size =6 color = "white">ACCOUNT NUMBER</font>
<%!Statement pst1=null; int s1;%>
<select name="n1">
<%try{
	pst1=conn.createStatement();
	ResultSet rs1=pst1.executeQuery("Select * from ACCOUNT"); 
 while(rs1.next()){
     s1=rs1.getInt(1);
   %>
   <option  onclick="this.form.submit()" value="<%=s1%>"><%=s1%></option>
  <%  }
	   rs1.close();
    %>

</select>
<%}catch(Exception e){}%>
  </p>
  <p>
   <input type="submit" name="Submit" value="Submit">
 </p>
</form>
<br><br><br><br><br><br><br><br>
<A HREF = "homepage.html"><FONT COLOR = "WHITE" SIZE = 6>HOMEPAGE</FONT></A>
</body>
</html>
