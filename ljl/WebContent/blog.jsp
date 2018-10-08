<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+"47.106.244.35"+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Leif's blog</title>

<link href="css/base.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<link href="css/m.css" rel="stylesheet">
<script src="js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/comm.js"></script>
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
</head>
<body>
<header class="header-navigation" id="header">
  <nav><div class="logo"><a href="/">Leif的个人博客</a></div>
    <h2 id="mnavh"><span class="navicon"></span></h2>
    <ul id="starlist">
      <li><a href="./blogServlet">网站首页</a></li>
      <li><a href="./share.jsp">我的相册</a></li>
    </ul>
</nav>
</header>
<article>
  <aside class="l_box">
      <div class="about_me">
        <h2>关于我</h2>
        <ul>
          <i><img src="images/1.gif"></i>
          <p><b>Leif</b>，IT民工</p>
        </ul>
      </div>
      <div class="wdxc">
        <h2>我的相册</h2>
        <ul>
          <li><a href="./share.jsp"><img src="images/2.jpg"></a></li>
          <li><a href="./share.jsp"><img src="images/3.jpg"></a></li>
          <li><a href="./share.jsp"><img src="images/4.jpg"></a></li>
          <li><a href="./share.jsp"><img src="images/5.jpg"></a></li>
          <li><a href="./share.jsp"><img src="images/6.jpg"></a></li>
          <li><a href="./share.jsp"><img src="images/7.jpg"></a></li>
        </ul>
      </div>
      <div class="links">
        <h2>友情链接</h2>
        <ul>
          <a href="http://47.106.244.35">leif的个人博客</a> <a href="http://47.106.244.35">leif博客</a>
        </ul>
      </div>
      <div class="guanzhu">
        <h2>关注我</h2>
        <ul>
          <img src="images/wx.png">
        </ul>
      </div>
  </aside>
  <main class="r_box">
  	<c:forEach items="${blogAll}" var="b">
     <li><i>作者ID:${b.uid}</i>
      <h3><a href="./getBlog?id=${b.bid}">${b.btitle}</a></h3>
      <p>${b.binfo}</p>
     </li>
	</c:forEach>
  </main>
</article>
<footer>
  <p>Design by <a href="http://47.106.244.35" target="_blank">leif</a> </p>
</footer>
<a href="#" class="cd-top">Top</a>

</body>
</html>