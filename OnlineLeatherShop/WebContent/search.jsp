<%@ page import="java.sql.*"%>
<%@include file="connect1.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; ">
</head>
<body style="background-color:lightblue ">
<form name="form1" method="post" action="firstpage.jsp">
  <p> WALLET ID
<%!Statement pst1=null; String s1="";%>
<select name="n1">
<%try{
	pst1=conn.createStatement();
	ResultSet rs1=pst1.executeQuery("Select * from wallet"); 
 while(rs1.next()){
     s1=rs1.getString(1);
   %>
   <option  onclick="this.form.submit()" value="<%=s1%>"><%=s1%></option>
  <%  }
	   rs1.close();
    %>

</select>
<%}catch(Exception e){}%>
  </p>
  <p>
   <input type="submit" name="Submit" value="Search">
 </p>
</form>
</body>
</html>

 <p> BELT ID
<%!Statement pst2=null; String s2="";%>
<select name="n1">
<%try{
	pst1=conn.createStatement();
	ResultSet rs1=pst1.executeQuery("Select * from belt"); 
 while(rs1.next()){
     s1=rs1.getString(1);
   %>
   <option  onclick="this.form.submit()" value="<%=s1%>"><%=s1%></option>
  <%  }
	   rs1.close();
    %>

</select>
<%}catch(Exception e){}%>
  </p>
  <p>
   <input type="submit" name="Submit" value="Search">
 </p>
</form>
</body>
</html>
<p> BAG ID
<%!Statement pst3=null; String s3="";%>
<select name="n1">
<%try{
	pst1=conn.createStatement();
	ResultSet rs1=pst1.executeQuery("Select * from bag"); 
 while(rs1.next()){
     s1=rs1.getString(1);
   %>
   <option  onclick="this.form.submit()" value="<%=s1%>"><%=s1%></option>
  <%  }
	   rs1.close();
    %>

</select>
<%}catch(Exception e){}%>
  </p>
  <p>
   <input type="submit" name="Submit" value="Search">
 </p>
</form>
</body>
</html>
<p> JACKET ID
<%!Statement pst4=null; String s4="";%>
<select name="n1">
<%try{
	pst1=conn.createStatement();
	ResultSet rs1=pst1.executeQuery("Select * from jacket"); 
 while(rs1.next()){
     s1=rs1.getString(1);
   %>
   <option  onclick="this.form.submit()" value="<%=s1%>"><%=s1%></option>
  <%  }
	   rs1.close();
    %>

</select>
<%}catch(Exception e){}%>
  </p>
  <p>
   <input type="submit" name="Submit" value="Search">
 </p>
</form>
</body>
</html>
<p> SHOE ID
<%!Statement pst5=null; String s5="";%>
<select name="n1">
<%try{
	pst1=conn.createStatement();
	ResultSet rs1=pst1.executeQuery("Select * from shoe"); 
 while(rs1.next()){
     s1=rs1.getString(1);
   %>
   <option  onclick="this.form.submit()" value="<%=s1%>"><%=s1%></option>
  <%  }
	   rs1.close();
    %>

</select>
<%}catch(Exception e){}%>
  </p>
  <p>
   <input type="submit" name="Submit" value="Search">
 </p>
</form>
</body>
</html>
