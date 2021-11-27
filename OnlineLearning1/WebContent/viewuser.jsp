<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@include file="Connection.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View member details</title>
</head>
<body style="background-color:lightblue ">
<%try{
	String s=request.getParameter("n1");
 out.println(s);
	    PreparedStatement pst=conn.prepareStatement("select * from member where id=?");
	    pst.setString(1,s);
	    ResultSet rs=pst.executeQuery();%>
	 
	   <%while(rs.next()){
		   %>
	   
	    <table border=2>
	    <tr>
<td>MEMBER ID</td>
<td>NAME</td>
<td>PHNO</td>
<td>MAIL ID</td>
<td>PASSWORD</td>
</tr>
	    <tr>
	    <td><%=rs.getString(1) %></td>
	    <td><%=rs.getString(2) %></td>
	    <td><%=rs.getString(3) %></td>
	    <td><%=rs.getString(4) %></td>	
	    <td><%=rs.getString(5) %></td>		    
		
		</tr>
	</table>
	   
    <% }} catch(Exception e){System.out.println(" connection unconnected");}%>
</body>
</html>