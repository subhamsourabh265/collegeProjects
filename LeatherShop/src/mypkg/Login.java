package mypkg;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
// Extend HttpServlet class
public class Login extends HttpServlet {
private static final long serialVersionUID = 1L;
public void init() throws ServletException {

}
public void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
response.setContentType("text/html");
PrintWriter pw = response.getWriter();
// create session variable
HttpSession session = request.getSession(true);
session.setAttribute("Mail Id",request.getParameter("n1"));
session.setAttribute("Password", request.getParameter("n2"));

String user=request.getParameter("user");
// System.out.print(user);

// Invalid User
if(user.equals("Select User...")) {
pw.println("<html><body text=\"red\">");
pw.println("<h3>Invalid Selection</h3>");
pw.println("<br>Wait ... It will atomatically redirect to Login Page....");

// response.sendRedirect("index.html");
response.setHeader("Refresh","3;url=mylogin.html");
pw.println("</body></html>");
}

// Admin Login
if(user.equals("admin")) {
response.sendRedirect("admin.jsp");
}

// Student Login
if(user.equals("member")) {
response.sendRedirect("registration.html");
}
}
}
