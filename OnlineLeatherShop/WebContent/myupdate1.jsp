<%@ page import="java.sql.*"%>
<%@include file="connect1.jsp" %>
<%String wallid="",wallprice="",wallcolor="";

Statement pst=null;
%>
<table border="3">
<tr>
<td>wallid</td>
<td>wallprice</td>
<td>wallcolor</td>

</tr>

<% 
try{
pst=conn.createStatement();
String b=request.getParameter("n1");
out.println(b);
ResultSet rs=pst.executeQuery("Select * from wallet " );
while(rs.next())
{
wallid=rs.getString(1);
wallprice=rs.getString(2);
wallcolor=rs.getString(3);
%>
<tr><td><%=wallid %></td><br><br>
<td><%=wallprice%></td><br><br>
<td><%=wallcolor%></td><br><br>

</tr>
<%}%>
</table>
<%
rs.close();
conn.close();
}catch(Exception e){}
%>
</body>
</html>
