package user;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteFile
 */
@WebServlet("/DeleteFile")
public class DeleteFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteFile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		
				String deletes=request.getParameter("id");
				String Resource_link1=request.getParameter("Resource_link1");
Connection conn=null;
connect1 c=new connect1();
conn=c.connect();
		//PreparedStatement pst=conn.prepareStatement("delete from course where name like'%"+deletes+"%'");
		String deleteSQL = "DELETE from document WHERE course = ?";
		PreparedStatement pst;
		try {
			pst = conn.prepareStatement(deleteSQL);
			pst.setString(1,deletes);
			int t=pst.executeUpdate();

			if(t>0)
			{
			out.println("deleted succesfully");
			response.sendRedirect("view_pdf.jsp");
			}
			
			File f=new File(Resource_link1);

			f.delete();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// execute delete SQL stetement
		
	}

}
