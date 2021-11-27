<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>Music Store</title>

<%@ include file="Connection.jsp" %>
<%@ page import="java.sql.*" %>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="header">
<div id="logo"><a href="#"><img src="images/logo.jpg" title="Music Store" alt="Music Store" border="0" height="55" width="262" /></a></div>
<ul class="cart">
<li><span>Shopping Cart:</span> 0 items</li>
</ul>
<ul class="lang">
<li>
<%
int flag=0;
String u_id1=request.getParameter("uname");
String pass1=request.getParameter("pass");
session.setAttribute("sesname", u_id1);
PreparedStatement pst1=conn.prepareStatement("select uname,pass from userdetail where uname=?");
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
	<h2>Welcome <%out.print(u_id1); %>!!!!!!</h2>
	<% 
}
else
{
	response.sendRedirect("ureglogin.html");
}

pst1.executeUpdate();
pst1.close();
%>
</ul>
<ul class="currency">
<li class="uimag"> 
<form method="post" action="user_search.jsp" name="search">
<input type="text" name="s1" value="">
</li>
<li class="fbimage">
<input type="submit" value="Search" name="search"></form>
</li>
<script type="text/javascript">
function sure(){
	if(confirm("Are you sure you want to Log Out")){
		window.location.href="logout.jsp"
	}
	else{
		return false;
	}
}
</script>
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
 <li><a href="/P&R/default.asp">Pop & Remix</a></li>
 <li><a href="/Bhangra/default.asp">Bhangra</a></li>
 <li><a href="/Ghazals/default.asp">Ghazals</a></li>
 <li><a href="/Artists/default.asp">Artists</a></li>
 <li><a href="/Wedding/default.asp">Wedding</a></li>
 <li><a href="/Singles/default.asp">Singles</a></li>
 <li><a href="/HS/default.asp">Hollywood Songs</a></li>
</ul>
</div>
</div>
<div id="middlePan">
<!-- PROD 1 -->
<div class="prod">
<div class="prodimg"><a href="#"><img src="images/HAK.jpg" alt="" border="0" height="123" width="119" /></a></div>
<div class="txt">
<p><a href="music/HAK.mp3">Hamari Adhuri Kahaani</a><br />
Arijit Singh<br />
<br />
</p>
</div>
<div class="price">
<p>Free</p>
</div>
<div class="imag"> 
<a href="music/HAK.mp3"><img src="images/download.jpg" width="78" height="18" alt=""/></a>
</div>
<div class="action">
	<audio controls="controls">
	<source src="music/HAK.mp3" type="audio/mpeg">
</audio>
</div>
</div>
<!-- PROD 2 -->
<div class="prod">
<div class="prodimg"><a href="#"><img src="images/Mata_Ka_Email.jpg" alt="" border="0" height="123" width="119" /></a></div>
<div class="txt">
<p><a href="music/Mata_Ka_Email.mp3">Mata Ka Email</a><br />
Subhash Kapoor & Gajendra Phogat<br />
<br/>
</p>
</div>
<div class="price">
<p>Free</p>
</div>
<div class="imag"> 
<a href="music/Mata_Ka_Email.mp3"><img src="images/download.jpg" width="78" height="18" alt=""/></a>
</div>
<div class="action">
	<audio controls="controls">
	<source src="music/Mata_Ka_Email.mp3" type="audio/mpeg">
</audio>
</div>
</div>
<!-- PROD 3 -->
<div class="prodlast">
<div class="prodimg"><a href="#"><img src="images/aashiqui2.jpg" alt="" border="0" height="123" width="119" /></a></div>
<div class="txt">
<p><a href="music/tum_hi_ho.mp3">Tum Hi Ho</a><br />
Arijit Singh<br />
<br/>
</p>
</div>
<div class="price">
<p>Free</p>
</div>
<div class="imag"> 
<a href="music/tum_hi_ho.mp3"><img src="images/download.jpg" width="78" height="18" alt=""/></a>
</div>
<div class="action">
	<audio controls="controls">
	<source src="music/tum_hi_ho.mp3" type="audio/mpeg">
</audio>
</div>
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
Copyright © Om Music Store. Designed by <a href="">RUSS</a><img src="images/btn_fbtw.jpg" width="450" height="112" alt=""/></p>
<p><a href="">Supported by </a><a href="" target="_blank">ommusicstore.com</a></p>
</div>
</body></html>