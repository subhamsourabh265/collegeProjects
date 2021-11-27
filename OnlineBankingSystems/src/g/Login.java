package g;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


// Extend HttpServlet class
public class Login extends HttpServlet {
private static final long serialVersionUID = 1L;
public void init() throws ServletException {

}
public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
{
response.setContentType("text/html");

HttpSession session = request.getSession(true);
session.setAttribute("id",request.getParameter("n1"));
session.setAttribute("password", request.getParameter("n2"));

response.sendRedirect("admlog1.jsp");

}
}
