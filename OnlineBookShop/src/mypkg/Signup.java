package mypkg;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

// Extend HttpServlet class
public class Signup extends HttpServlet {
private static final long serialVersionUID = 1L;
public void init() throws ServletException
            {	

            }

public void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
// Set response content type
response.setContentType("text/html");
// Actual logic goes here
PrintWriter pw = response.getWriter();
Connection conn=null;
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
conn  = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","sourabh");
} 
catch(Exception e) {
e.printStackTrace();
}
String id=request.getParameter("n1");
String name=request.getParameter("n2");
String phno = request.getParameter("n3");
String mailid = request.getParameter("n4");
String password=request.getParameter("n5");

try{
PreparedStatement pst=conn.prepareStatement("insert into member values(?,?,?,?,?)");
pst.setString(1, id);
pst.setString(2, name);
pst.setString(3, phno);
pst.setString(4, mailid);
pst.setString(5, password); // to insert integer value in database
 
int t = pst.executeUpdate();
if(t > 0) {
	

System.out.println("Inserted");
pw.println("<html><body>");
pw.println("<h3 style=\"red\">Successfully Registered</h3>");
pw.println("<br><a href=\"registration.html\">BACK</a></td>");
pw.println("</body></html>");
pw.close();
conn.close();
}
}
catch(Exception e) { 
e.printStackTrace();
}
}
}
