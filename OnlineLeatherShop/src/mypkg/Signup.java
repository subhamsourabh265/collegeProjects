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
String mailid=request.getParameter("n1");
String username=request.getParameter("n2");
String address = request.getParameter("n3");
String password = request.getParameter("n4");
String phno=request.getParameter("n5");

try{
PreparedStatement pst=conn.prepareStatement("insert into customer values(?,?,?,?,?)");
pst.setString(1,mailid);
pst.setString(2,username);
pst.setString(3,address);
pst.setString(4,password);
pst.setString(5,phno); // to insert integer value in database
 
int t = pst.executeUpdate();
if(t > 0) {
	

System.out.println("Inserted");
pw.println("<html><body>");
pw.println("<h3 style=\"red\">Registration successfully....</h3>");
pw.println("<br><a href=\"reg.html\">BACK</a></td>");
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
