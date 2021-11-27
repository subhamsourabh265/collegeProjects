<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="Connection.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<title>Admin Page</title>
</head>
<body>
<div id="header">
<div id="logo"><a href="#"><img src="images/logo.jpg" title="Music Store" alt="Music Store" border="0" height="55" width="262" /></a></div>
<ul class="cart">
<li><span>Shopping Cart:</span> 0 items</li>
</ul>
<script type="text/javascript">
function sure(){
	if(confirm("Are you sure you want to Log Out")){
		window.location.href="alogout.jsp"
	}
	else{
		return false;
	}
}
</script>

<ul class="currency">
<li class="twimage">
<a href="#" onclick="sure()"><img src="images/btn_logout.png" width="70" height="25" alt=""/></a>
</li>
</ul>
<ul class="menu">
  <li class="home"><a href="index.html" title="Home Page">Home</a></li>
<li class="line"></li>
<li class="new"><a href="#" title="New Products">New</a></li>
<li class="line"></li>
<li class="specials"><a href="#" title="Specials">specials</a></li>
<li class="line"></li>
<li class="account"><a href="#" title="My Account">Account</a></li>
<li class="line"></li>
<li class="contact"><a href="#" title="Contact Us">Contacts</a></li>
</ul>
</div>
<div id="content">
<div id="leftPan">
<div id="categories">
<h2></h2>
<ul>
 <li><a href="index.html">Home</a></li>
 <li><a href="bollywood_songs.html">Bollywood Songs</a></li>
 <li><a href="#">Pop & Remix</a></li>
 <li><a href="#">Bhangra</a></li>
 <li><a href="#">Ghazals</a></li>
 <li><a href="#">Artists</a></li>
 <li><a href="#">Wedding</a></li>
 <li><a href="#">Singles</a></li>
 <li><a href="#">Hollywood Songs</a></li>
</ul>
</div>
</div>
<div id="log" style="margin: 100px; padding:20px; border: 1px solid black; float:left;">

<%
int flag=0;
String u_id1=request.getParameter("uname");
String pass1=request.getParameter("pass");
session.setAttribute("sesname", u_id1);
PreparedStatement pst1=conn.prepareStatement("select u_id,pass from login where u_id=?");
pst1.setString(1, u_id1);
ResultSet rs=pst1.executeQuery();
while(rs.next())
{
	String a=rs.getString(1);
	String b=rs.getString(2);
	//out.println(a);
	//out.println(b);
if(u_id1.equals(a) && (pass1.equals(b)))
{
	flag=1;
}
else
{
	flag=0;
}
}
if(flag==1)
{
	%>
	<h1>Welcome <%out.print(u_id1); %>!!!</h1>
	<p><a href="view_songs.jsp">View Available Songs</a><br></p>
	<p><a href="addSongs.jsp">Upload Songs</a><br></p>
	<p>
	<a href="delete_songs.jsp">Delete Songs</a><br></p>
	<% 
}
else
{%>
<h2><%
out.print("Wrong Username or Password");
%>
<a href="admin_login.html"> Login Again </a></h2>
<% 
}

pst1.executeUpdate();
pst1.close();
%>
</div>

</div>
<div class="clear"></div>
</div>
<div class="mov_img">
<marquee onmouseover="stop();" onmouseout="start();">
<img src="image_links/CoverLP.jpg" width="123" height="119" alt=""/>
<img src="image_links/A2.jpg" width="123" height="119" alt=""/>
<img src="image_links/Covergd.jpg" width="123" height="119" alt=""/>
<img src="image_links/CoverLPR.jpg" width="123" height="119" alt=""/>
<img src="image_links/ABCD_2.jpg" width="123" height="119" alt=""/>
<img src="image_links/Barfi.jpg" width="123" height="119" alt=""/>
<img src="image_links/Bilal Seed.jpg" width="123" height="119" alt=""/>
<img src="image_links/Blood Money.jpg" width="123" height="119" alt=""/>
<img src="image_links/Bollywood_Unwind.jpg" width="123" height="119" alt=""/>
<img src="image_links/Cocktail.jpg" width="123" height="119" alt=""/>
<img src="image_links/Cover.jpg" width="123" height="119" alt=""/>
<img src="image_links/Cover1.jpg" width="123" height="119" alt=""/>
<img src="image_links/CoverAS.jpg" width="123" height="119" alt=""/>
<img src="image_links/CoverSAL.jpg" width="123" height="119" alt=""/>
</marquee>
</div>

<div id="footer">
<img src="images/cards.jpg" alt="" height="20" width="141" />
<p><a href="#">HOME</a> | <a href="#">ABOUT
US</a> | <a href="#">SERVICES</a> | <a href="#">PRODUCTS</a> | <a href="#">SUPPORT
INFO</a> | <a href="#">NEWS &amp; EVENTS</a>
| <a href="#">CONTACTS</a><br />
Copyright © Om Music Store. Designed by <a href="">RUSS</a></p>
<p><a href="">Supported by </a><a href="" target="_blank">ommusicstore.com</a></p>
</div>

</body>
</html>