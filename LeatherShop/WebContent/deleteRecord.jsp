<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%
  Connection conn = null;
        
  Class.forName("oracle.jdbc.driver.OracleDriver");
  conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","sourabh");
        
  PreparedStatement psDeleteRecord=null;
  String sqlDeleteRecord=null;
        
  int productid=Integer.parseInt(request.getParameter("DPID"));
      
  try
  {
      
    sqlDeleteRecord="Delete from products where productid=?";
    psDeleteRecord=conn.prepareStatement(sqlDeleteRecord);
    psDeleteRecord.setInt (1,productid);
   
            
   psDeleteRecord.executeUpdate();
  }
  catch(Exception e)
  {
      response.sendRedirect("admin.jsp");//// On error it will send back to addRecord.jsp page
  }
        
    try{
      if(psDeleteRecord!=null)
      {
       psDeleteRecord.close();
      }
      
      if(conn!=null)
      {
       conn.close();
      }
    }
    catch(Exception e)
    {
      e.printStackTrace(); 
    }
%>
<html>
   <head>
      <meta http-equiv="REFRESH" content="3;url=/E-shopping/login.jsp">
    </head> 
<body>
Data is deleted successfully.<br>
You will be redirected to the Previous Page in 3 seconds.....
</body>
</html>
