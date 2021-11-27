<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="Connection.jsp" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
#header {   
    color:blue;
    background-color: #BCC67C;
    text-align:right;
    height:230px;
    width:100%;
    padding:0px;
    -webkit-box-shadow: 2px 0px 6px 3px rgba(0,0,0,0.4);
    -moz-box-shadow:    2px 0px 6px 3px rgba(0,0,0,0.4);
     box-shadow:        2px 0px 6px 3px rgba(0,0,0,0.4);   
}
#nav {
    line-height:30px;
    background-color: #C5C5C5;
    color:black;
    text-align:left;
    height:100%;
    width:180px;
    float:left;
    padding:5px;	
    -webkit-box-shadow: 2px 0px 6px 3px rgba(0,0,0,0.4);
-moz-box-shadow:        2px 0px 6px 3px rgba(0,0,0,0.4);
 box-shadow:            2px 0px 6px 3px rgba(0,0,0,0.4);         
}
#section {
    width:1020px;
    float:centre;
    padding:10px;	 	 
}
#nav1 {
    line-height:30px;
    background-color: #5f0303;
    height:100%;
    width:120px;
    float:right;
    padding:5px;	      
}
</style>
</head>
<body  background="G:\Software\eclipse-jee-mars-M3-win32-x86_64\eclipse\New folder\tst\image\EXPTEXTB.JPG">
<div id="header">
<img  src="G:\Software\eclipse-jee-mars-M3-win32-x86_64\eclipse\New folder\tst\image\b_top.jpg" style="width: 100%;height: 230px; margin: 0px 100% 0px 0px;">
<font size="5"><a href="uLogin.html">User Login</font> <br>
<font size="5"><a href="aLogin.html">Admin Login</font> <br>
<font size="5"><a href="uReg.html">Register</font> <br>
<!-- search items -->
<form method="post" action="user_search.jsp" name="search">
<p><input type="text" name="s1" value=""/> 
<input type="submit" value="Search" name="Search"></p></form>
</div>
<div id="nav">
</br></br>
<a href="index.html">Home</a>
<hr>
<a href="user_search.jsp">Singles/MP3 Tracks</a>
<hr>
<a href="user_search.jsp">Bollywood Movie Songs</a>
<hr>
<a href="user_search.jsp">Indian Pop & Remix</a>
<hr>
<a href="user_search.jsp">Ghazals</a>
<hr>
<a href="user_search.jsp">Singer</a>
<hr>
<a href="user_search.jsp">English Songs</a>
</div>
<div id="section">
<table width="40%" height=60 border="1" align=center bordercolor="red">
 <tr>
    <td> 
    <font size="6"><a href="SearchResultSong.jsp">Songs</a></font></td>
    <td> 
    <font size="6"><a href="SearchResultAlbum.jsp">Albums</a></font></td>
    <td> 
    <font size="6"><a href="SearchResultSinger.jsp">Singer</a></font></td>
  </tr>
</table>
<table width="40%" height=40 border="1" align=center bordercolor="red">
 <tr>
    <td> 
    <font size="4">Searched by Songs</font></td>
    </tr>
</table>

<table width="60%" height=80 border="1" align=center bordercolor="red" >
<tr>
    <td> 
    <font size="4">Songs</font></td>
    <td> 
    <font size="4">Movie</font></td>
    <td> 
    <font size="4">Album</font></td>
    <td> 
    <font size="4">Singer</font></td>
    <td>
    <font size="4">Language</font></td>
    <td> 
    <font size="4">Genre</font></td>
    <td> 
    <font size="4">Song Length</font></td>
    <td> 
    <font size="4">Song Size</font></td>
    <td> 
    <font size="4">Download</font></td>
</tr>
</div>
</body>
</html>