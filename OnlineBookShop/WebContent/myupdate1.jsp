<%@ page import="java.sql.*"%>
<%@include file="connect1.jsp" %>
<%String bname="",price="",author="",publisher="";
String bid;
Statement pst=null;
%>
<table border="3">
<tr>
<td>bid</td>
<td>bname</td>
<td>author</td>
<td>price</td>
<td>publisher</td>
</tr>

<% 
try{
pst=conn.createStatement();
String b=request.getParameter("n1");
out.println(b);
ResultSet rs=pst.executeQuery("Select * from book where bid="+b );
while(rs.next())
{
bid=rs.getString(1);
bname=rs.getString(2);
author=rs.getString(3);
price=rs.getString(4);
publisher=rs.getString(5);
%>
<tr><td><%=bid %></td><br><br>
<td><%=bname%></td><br><br>
<td><%=author%></td><br><br>
<td><%=price%></td><br><br>
<td><%=publisher%></td><br><br>
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
