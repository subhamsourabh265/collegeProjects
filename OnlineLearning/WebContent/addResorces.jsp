<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Songs</title>
</head>
<body>

<h1><u>UPLOAD SONGS</u></h1>
<%String name=(String)session.getAttribute("sesname");
/* if(name.equals("null"))
{
response.sendRedirect("admin_login.html");
} */
%>

<p><span style="colour:#808080">Logged in as :<%out.print(name);%></span>

<form action="upload" method="post" enctype="multipart/form-data">
Album<input type="text" name="album"/><br>
<br>
<p>name <input type="text" name="name" ><br></p>
<p>singer <input type="text" name="singer" ><br></p>
<p>length <input type="text" name="length" ><br></p>
<p>genre <select name="genre">
<option value="bollywood">Bollywood</option>
<option value="devotional">Devotional</option>
<option value="gazal">Gazal</option>
<option value="hip">Hip Hop</option>
<option value="old">Old is Gold</option>
<option value="party">Party</option>
<option value="pop">Pop</option>
<option value="rock">Rock</option>
<option value="romantic">Romantic</option>
<option value="sufi">Sufi</option>
</select><br></p>
<p>language <select name="language">
<option value="english">English</option>
<option value="hindi">Hindi</option>
</select><br></p>
<p>size <input type="text" name="song_size" ><br></p>
<p>Music link <input type="file" name="song_link" accept=".mp3,audio/*"><br></p>
<p>Movie <input type="text" name="movie" /><br></p>
<p><input type="submit" value="Upload" /></p>
</form>
</body>
</html>