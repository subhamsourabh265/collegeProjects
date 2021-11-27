<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@include file="Connection.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>download</title>
</head>
<body style="background-color:lightblue ">
<%try{
	String s=request.getParameter("n1");
 out.println(s);
	    PreparedStatement pst=conn.prepareStatement("select * from document where course=?");
	    pst.setString(1,s);
	    ResultSet rs=pst.executeQuery();%>
	 
	   <%while(rs.next()){
		   %>
	   
	    <form action="download">
	    <table border=2>
	    <tr>
<td>COURSE</td>
<td>AUTHOR</td>
<td>COURSETYPE</td>
<td>FILENAME</td>
<td>LINK</td>
</tr>
	    <tr>
	    <td><%=rs.getString(1) %></td>
	    <td><%=rs.getString(2) %></td>
	    <td><%=rs.getString(3) %></td>	    
		<td><input type="text" value="<%=rs.getString(4)%>" name="h1"></td>
		<td><input type="submit" value="download"/></td>
		</tr>
	</table>
	  </form>
	   
    <% }} catch(Exception e){System.out.println(" connection unconnected");}%>
</body>
</html>