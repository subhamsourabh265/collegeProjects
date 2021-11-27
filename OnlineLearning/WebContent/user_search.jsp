<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="Connection.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#header {   
    color:black;
    
    text-align:right;
    height:200px;
    width:100%;
    padding:0px;
       }
#nav {
    line-height:30px;
    background-color: #C8C0C0;
    color:black;
    text-align:left;
    height:100%;
    width:180px;
    float:left;
    padding:5px;	
        -webkit-box-shadow: 2px 0px 6px 3px rgba(0,0,0,0.4);
        -moz-box-shadow:    2px 0px 6px 3px rgba(0,0,0,0.4);
         box-shadow:        2px 0px 6px 3px rgba(0,0,0,0.4);         
}
#section {

    width:1020px;
    float:centre;
    padding:10px;	 	 
}
#nav1 {
    line-height:30px;
    background-color: #5f0803;
    height:100%;
    width:120px;
    float:right;
    padding:5px;	      
}
</style>
</head>
<body>
<%@ page import="java.sql.*" %>
<div id="header">
<img  src="images/b_top.jpg" style="width: 60%;height: 180px; margin: 0px 150px 0px 0px; -webkit-box-shadow: 2px 0px 6px 3px rgba(0,0,0,0.4);
-moz-box-shadow:    2px 0px 6px 3px rgba(0,0,0,0.4);
 box-shadow:        2px 0px 6px 3px rgba(0,0,0,0.4);">
<br>
<%String uname=(String)session.getAttribute("sesname");%>
<P>Logged in as ::  <%out.print(uname);%></P>
<!-- search items -->
<form method="post" action="user_search.jsp" name="search">
<p><input type="text" name="s1" value=""/> 
<input type="submit" value="Search" name="Search"></p></form>
</div>
<div id="nav">
</br></br>
<a href="index.html">Home</a>
<hr>
<a href="user_login.jsp">Singles/MP3 Tracks</a>
<hr>
<a href="user_login.jsp">Bollywood Movie Songs</a>
<hr>
<a href="user_login.jsp">Indian Pop & Remix</a>
<hr>
<a href="user_login.jsp">Ghazals</a>
<hr>
<a href="user_login.jsp">Artists</a>
<hr>
<a href="user_login.jsp">English Songs</a>
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
<table width="40%" height=60 border="1" align=center bordercolor="red">
 <tr>
    <td> 
    <font size="4">Search Result</font></td>
    </tr>
</table>
<%String name="",album="",singer="",length="",movie="",lang="",genre="",sng_lng=" ";
String searchTxt = request.getParameter("s1");
%>
<table width="60%" border="1" align=center bordercolor="red">
<tr>
<td>
<font size="4">Search result:- <%=searchTxt %>
</font>
</td>
</tr>
</table>
<table width="60%" border="1" align=center bordercolor="red">
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
    <% 
    System.out.print("abc");
   try{ 
      PreparedStatement pst=conn.prepareStatement("Select * from music WHERE song_name like '%"+searchTxt+"%' OR album like '%"+searchTxt+"%' OR movie like '%"+searchTxt+"%' OR singer like '%"+searchTxt+"%'");
      ResultSet rs=pst.executeQuery();
      System.out.print("abc");
  while(rs.next())
  {
  name=rs.getString(2);
  movie=rs.getString(9);
  album=rs.getString(1);
  singer=rs.getString(3);
  lang=rs.getString(6);
  genre=rs.getString(5);
  length=rs.getString(7);
  sng_lng=rs.getString(4);
  String music_link=rs.getString(8);
  %>
<tr>
    <td> 
    <font size="3"><%=name %></a></font> <br>
    <td>
    <font size="3"><%=movie %></a></font><br>
    <td> 
    <font size="3"><%=album%></a></font></td>
    <td> 
    <font size="3"><%=singer %></a></font> <br>
    <td>
    <font size="3"><%=lang %></a></font><br>
    <td> 
    <font size="3"><%=genre%></a></font></td>
    <td> 
    <font size="3"><%=sng_lng %></a></font> <br>
    <td> 
    <font size="3"><%=length%> MB</a></font></td>
    <td>
    <form action="download"><input type="hidden" name="h1" value="<%=rs.getString(8)%>"><input type="submit" value="Download"></form>    
    </tr>
    <% System.out.println(music_link);}%>
</table>
<%
pst.close();
conn.close();
}catch(Exception e){System.out.print("errror");}
%>
</div>
</body>
</html>