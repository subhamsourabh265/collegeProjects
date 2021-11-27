<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Resources</title>
</head>
<body bgcolor = burlywood>

<h1><u>UPLOAD Resources</u></h1>
<%String name=(String)session.getAttribute("sesname");
/* if(name.equals("null"))
{
response.sendRedirect("admin_login.html");
} */
%>

<p><span style="colour:#808080">Logged in as Admin</span>

<form action="upload" method="post" enctype="multipart/form-data">
Course<input type="text" name="course"/><br>
<br>
<p>Author <input type="text" name="author" ><br></p>

<p>Course Type <select name="coursetype">
<option value="programming">Programming</option>
<option value="web_development">Web Development</option>
<option value="management">Management</option>
<option value="java_t">Java Technology</option>
<option value="sports">Sports</option>
<option value="mobile">Mobile Development</option>
<option value="comp">Competitive Exams</option>
<option value="video">Video Tutorials</option>
</select><br></p>

<p>Resource link <input type="file" name="Resource_link" ><br></p>

<p><input type="submit" value="Upload" /></p>
</form>
</body>
</html>