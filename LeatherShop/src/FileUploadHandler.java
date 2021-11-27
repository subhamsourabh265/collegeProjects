import java.io.*;
	import java.util.*;
	import javax.servlet.ServletException;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
	import org.apache.commons.fileupload.FileItem;
	import org.apache.commons.fileupload.FileUploadException;
	import org.apache.commons.fileupload.disk.DiskFileItemFactory;
	import org.apache.commons.fileupload.servlet.ServletFileUpload;
	import java.sql.*;
	
	
	 	public class FileUploadHandler extends HttpServlet {
	    //private final String UPLOAD_DIRECTORY1= "C:/temp";
	    private final String UPLOAD_DIRECTORY= "LeatherShop//images";
	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException{
	    	String bid=null;
	    	String bname=null;
	    	String subject=null;
	    	String author=null;
	    	String publisher=null;
	    	String filename=null;
	    	
	        //process only if its multipart content
	        if(ServletFileUpload.isMultipartContent(request)){
	            try {
	                List<FileItem> multiparts = new ServletFileUpload(
                       new DiskFileItemFactory()).parseRequest(request);
	               
                for(FileItem item : multiparts){
	                    if(!item.isFormField()){
                        filename = new File(item.getName()).getName();
	                        item.write( new File(UPLOAD_DIRECTORY + File.separator + filename));
	                    }
	                    else if (item.getFieldName().equals("n1")){
	                    	String p= item.getFieldName();//text1
	      	    	      bid = item.getString();
	                    }
	                    else if (item.getFieldName().equals("n2")){
	                    	String p= item.getFieldName();//text1
	      	    	      bname = item.getString();
	                    }
	                    else if (item.getFieldName().equals("n3")){
	                    	String p= item.getFieldName();//text1
	      	    	      subject = item.getString();}
	                    
	                    else if (item.getFieldName().equals("n4")){
	                    	String p= item.getFieldName();//text1
	      	    	      author = item.getString();
	                    }else 
	                    {
	                    	String p= item.getFieldName();//text1
	      	    	      publisher = item.getString();
	      	    	  
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
	     
	        
	        request.getRequestDispatcher("/result.jsp").forward(request, response);
	        Connection conn= null;
	    	Connect1 c= new Connect1();
	        try{
	        
 //eid=new String(UPLOAD_DIRECTORY);
 // name= name.concat( File.separator).concat(name);
System.out.println(bname);

	    conn=c.connect1();
	    System.out.println(" connection connected");
	        } catch(Exception e){System.out.println(" connection unconnected");}
	    try{
	    	
	    PreparedStatement pst=conn.prepareStatement("insert into book values(?,?,?,?,?,?)");
	   
	    pst.setString(1,bid);
	    pst.setString(2,bname);
        pst.setString(3,subject);
        pst.setString(4,author);
        pst.setString(5,publisher);
        pst.setString(6,filename);
	    pst.executeUpdate();
	    conn.close();

	   }
	   catch(Exception e)
	  {
		   System.out.println("errorrr");
	  }
	    }
	   
	}
	
	
	
