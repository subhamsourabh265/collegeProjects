<%@ page import="java.sql.*"%>
<%@include file="connect1.jsp" %>
<%String username="",password="",repassword="",address="";
int accountno ,amount,phone;
Statement pst=null;
%>
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
    <A href="index.html"><IMG SRC="images/home1.gif"></IMG></A>	
</div>
<font size =6 color ="white">
<table border="2">
<tr>
<td>ACCOUNT NO</td>
<td>USER NAME</td>
<td>PASSWORD</td>
<td>AMOUNT</td>
<td>ADDRESS</td>
<td>PHONE</td>
</tr>
</font>

<% 
try{
pst=conn.createStatement();
String a=request.getParameter("n1");
out.println("<u>INFORMATION OF  ACCOUNT NO  <b>"+a+"</b></u>");
out.println("<br><br>");
ResultSet rs=pst.executeQuery("Select * from account where accountno="+a);
while(rs.next())
{
accountno=rs.getInt(1);
username=rs.getString(2);
password=rs.getString(3);
amount=rs.getInt(5);
address=rs.getString(6);
phone=rs.getInt(7);
%>
<tr><td><%=accountno%></td>
<td><%=username%></td>
<td><%=password%></td>
<td><%=amount%></td>
<td><%=address%></td>
<td><%=phone%></td>
</tr>
<%}%>
</table>
<%
rs.close();
conn.close();
}catch(Exception e){}
%>
   
 </p>
 <br>
 <a href = "view1.jsp"><font color = white size = 5>BACK</a></font>
 <br><br>
 <a href = "adminlogin.html"><font color = white size = 5>LOGOUT</a></font>
 
</form>
</html>
