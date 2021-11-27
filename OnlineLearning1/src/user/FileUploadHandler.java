package user;


	import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import java.sql.*;
	

	 

	@WebServlet("/UploadFile")
	public class FileUploadHandler extends HttpServlet {
		private static final long serialVersionUID = 1L;
		private final String UPLOAD_DIRECTORY1= "E:\\Workspace2\\OnlineLearning1\\WebContent\\document";
	    //private final String UPLOAD_DIRECTORY= "G:/Workspace/music library/WebContent/image_link/";
	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException{
	    	response.setContentType("text/html");  
			PrintWriter out = response.getWriter();
			
	    	
	    	String name1=null;
	    	
	    	
	    	String course=null;
	    	String author=null;
	    	String coursetype=null;
	    	String link=null;
	    	
	    	
	        //process only if its multipart content
	        if(ServletFileUpload.isMultipartContent(request)){
	            try {
	                List<FileItem> multiparts = new ServletFileUpload(
	                   new DiskFileItemFactory()).parseRequest(request);
	               
	            for(FileItem item : multiparts){
	                    if(!item.isFormField()){
	                  
	                    name1 = new File(item.getName()).getName();
	                    item.write( new File(UPLOAD_DIRECTORY1 + File.separator + name1));
	                    link=UPLOAD_DIRECTORY1+"/"+name1;
	                    }
	                    
	                    else if (item.getFieldName().equals("course"))
	                    {
	                    	String p1=item.getFieldName();
	                    	course=item.getString();
	                    }
	                    else if (item.getFieldName().equals("author"))
	                    {
	                    	String p2=item.getFieldName();
	                    	author=item.getString();
	                    }
	                    else if (item.getFieldName().equals("coursetype"))
	                    {
	                    	String p3=item.getFieldName();
	                    	coursetype=item.getString();
	                    }
	                    else
	                    {
	                    	String p4 = item.getFieldName();
	                    	name1=item.getString();
	                    }
	                    
	                }
	            
	               //File uploaded successfully
	               request.setAttribute("message", "File Uploaded Successfully");
	            } catch (Exception ex) {
	               request.setAttribute("message", "File Upload Failed due to " + ex);
	            }         
	          
	        }else{
	            request.setAttribute("message", "Sorry this Servlet only handles file upload request");
	        }
	        
	        System.out.println("Details is"+course);
	     
	        Connection conn= null;
	    	connect1 c=new connect1();
	        try{
	        
	//fpath=new String(UPLOAD_DIRECTORY);
	//fpath=fpath.concat( File.separator).concat(name);
	//System.out.println(fpath);
	//System.out.println(name);

	    conn=c.connect();
	    System.out.println(" connection connected");
	        } catch(Exception e){System.out.println(" connection unconnected");}
	    try{
	    	
	    	PreparedStatement pst=conn.prepareStatement("insert into document values(?,?,?,?)");
	    	   
	    	
	    	pst.setString(1,course);
	        pst.setString(2,author);
	        pst.setString(3,coursetype);
	        pst.setString(4,name1);
	        System.out.println(course);
	        pst.executeUpdate();
	      
	        pst.close();


	        }catch(Exception e){System.out.println("errorrr");}
	    
	    request.getRequestDispatcher("result.jsp").forward(request, response);
	    }
	   
	}