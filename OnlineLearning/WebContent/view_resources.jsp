<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="Connection.jsp" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<div>
<div style=" padding:20px; border: 1px solid black; float:Centre; width:83%;">
<% 

	Statement pst=null;
String searchTxt=request.getParameter("s1"); %>
Available Songs<br>
<table border="1"><tr>
<td>Name</td>
<td>Movie</td>
<td>Album</td>
<td>Singer</td>
<td>Language</td>
<td>Genre</td>
<td>Size</td>
<td>music_link</td>
<td>Song Length</td>
</tr>
<% 
try{
pst=conn.createStatement();
ResultSet rs=pst.executeQuery("Select * from music ");
while(rs.next())
{
%>    
<tr><td><%=rs.getString(2) %></td>
 <td><%=rs.getString(9) %></td>
 <td><%=rs.getString(1) %></td>
 <td><%=rs.getString(3) %></td>
 <td><%=rs.getString(6) %></td>
 <td><%=rs.getString(5) %></td>
 <td><%=rs.getString(7) %></td>
 <td><%=rs.getString(8) %></td>
 <td><%=rs.getString(9) %></td>
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
 <form action="index.html">
<input type="submit" value="Home">
</form>

</body>
</html>