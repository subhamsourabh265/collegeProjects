<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="Connection.jsp" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>view resources</title>
</head>
<body bgcolor= burlywood>


<div>
<div style=" padding:20px; border: 1px solid black; float:Centre; width:83%;">
<% 

	Statement pst=null;
String searchTxt=request.getParameter("s1"); %>
AVAILABLE RESOURCES<br>
<table border="1"><tr>
<td>COURSE</td>
<td>AUTHOR</td>
<td>COURSE TYPE</td>
<td>FILENAME</td>
</tr>
<% 
try{
pst=conn.createStatement();
ResultSet rs=pst.executeQuery("Select * from document ");
while(rs.next())
{
%>    
<tr><td><%=rs.getString(1) %></td>
 <td><%=rs.getString(2) %></td>
 <td><%=rs.getString(3) %></td>
  <td><%=rs.getString(4) %></td>


 <%
}
 rs.close();
 conn.close();
 }catch(Exception e){}
 %>
</div>
</tr>
</table>
</div>
<p>
 <form action="admlog.html">
<input type="submit" value="Home">
</form>

</body>
</html>