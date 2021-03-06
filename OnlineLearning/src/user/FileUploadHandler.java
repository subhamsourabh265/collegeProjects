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
		private final String UPLOAD_DIRECTORY1= "E:/college/Workspace/ommusicstore/WebContent/music";
	    //private final String UPLOAD_DIRECTORY= "G:/Workspace/music library/WebContent/image_link/";
	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException{
	    	response.setContentType("text/html");  
			PrintWriter out = response.getWriter();
			
	    	
	    	String name1=null;
	    	
	    	
	    	String album1=null;
	    	String song_name1=null;
	    	String singer1=null;
	    	String length1=null;
	    	String genre1=null;
	    	String language1=null;
	    	String song_size1=null;
	    	String song_link1=null;
	    	String movie1=null;
	    	
	    	
	        //process only if its multipart content
	        if(ServletFileUpload.isMultipartContent(request)){
	            try {
	                List<FileItem> multiparts = new ServletFileUpload(
	                   new DiskFileItemFactory()).parseRequest(request);
	               
	            for(FileItem item : multiparts){
	                    if(!item.isFormField()){
	                  
	                    name1 = new File(item.getName()).getName();
	                    item.write( new File(UPLOAD_DIRECTORY1 + File.separator + name1));
	                    song_link1=UPLOAD_DIRECTORY1+"/"+name1;
	                    }
	                    
	                    else if (item.getFieldName().equals("album"))
	                    {
	                    	String p1=item.getFieldName();
	                    	album1=item.getString();
	                    }
	                    else if (item.getFieldName().equals("name"))
	                    {
	                    	String p2=item.getFieldName();
	                    	song_name1=item.getString();
	                    }
	                    else if (item.getFieldName().equals("singer"))
	                    {
	                    	String p3=item.getFieldName();
	                    	singer1=item.getString();
	                    }
	                    else if (item.getFieldName().equals("length"))
	                    {
	                    	String p4=item.getFieldName();
	                    	length1=item.getString();
	                    }
	                    else if (item.getFieldName().equals("genre"))
	                    {
	                    	String p5=item.getFieldName();
	                    	genre1=item.getString();
	                    }
	                    else if (item.getFieldName().equals("language"))
	                    {
	                    	String p6=item.getFieldName();
	                    	language1=item.getString();
	                    }
	                    else if (item.getFieldName().equals("song_size"))
	                    {
	                    	String p7=item.getFieldName();
	                    	song_size1=item.getString();
	                    }
	                    else if (item.getFieldName().equals("movie"))
	                    {
	                    	String p8=item.getFieldName();
	                    	movie1=item.getString();
	                    }
	                    
	                }
	            
	               //File uploaded successfully
	               request.setAttribute("message", "File Uploaded Successfully");
	            } catch (Exception ex) {
	               request.setAttribute("message", "File Upload Failed due to " + ex);
	            }         
	          
	        }else{
	            request.setAttribute("message",
	                                 "Sorry this Servlet only handles file upload request");
	        }
	        
	        System.out.println("Details is"+album1);
	     
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
	    	
	    	PreparedStatement pst=conn.prepareStatement("insert into music values(?,?,?,?,?,?,?,?,?)");
	    	   
	    	
	    	pst.setString(1,album1);
	        pst.setString(2,song_name1);
	        pst.setString(3,singer1);
	        pst.setString(4,length1);
	        pst.setString(5,genre1);
	        pst.setString(6,language1);
	        pst.setString(7,song_size1);
	        pst.setString(8,song_link1);
	        pst.setString(9,movie1);
	        System.out.println(album1);
	        pst.executeUpdate();
	        System.out.println("abc");
	        pst.close();


	        }catch(Exception e){System.out.println("errorrr");}
	    
	    request.getRequestDispatcher("/result.jsp").forward(request, response);
	    }
	   
	}