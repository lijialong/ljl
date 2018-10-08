<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+"47.106.244.35"+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; utf-8">
<title>Leif's blog</title>

<link href="css/base.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<link href="css/m.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
<script src="js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/comm.js"></script>
<script src="js/scrollReveal.js"></script>
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
  <div class="picbox">
    <ul>
      <li data-scroll-reveal="enter bottom over 1s" ><a href="./blogServlet"><i><img src="images/7.jpg"></i>
        <div class="picinfo">
          <h3>老王</h3>
          <span>忧伤</span> </div>
        </a></li>
       <li data-scroll-reveal="enter bottom over 1s" ><a href="./blogServlet"><i><img src="images/2.jpg"></i>
        <div class="picinfo">
          <h3>biee展示</h3>
          <span>露脸</span> </div>
        </a></li>
    </ul>
    <ul>
        <li data-scroll-reveal="enter bottom over 1s" ><a href="./blogServlet"><i><img src="images/3.jpg"></i>
        <div class="picinfo">
          <h3>安排</h3>
          <span>明明白白</span> </div>
        </a></li>
          <li data-scroll-reveal="enter bottom over 1s" ><a href="./blogServlet"><i><img src="images/5.jpg"></i>
        <div class="picinfo">
          <h3>露营</h3>
          <span>interesting</span> </div>
        </a></li>
    </ul>
    <ul>
       <li data-scroll-reveal="enter bottom over 1s" ><a href="./blogServlet"><i><img src="images/4.jpg"></i>
        <div class="picinfo">
          <h3>露营</h3>
          <span>exciting</span> </div>
        </a></li>
          <li data-scroll-reveal="enter bottom over 1s" ><a href="./blogServlet"><i><img src="images/6.jpg"></i>
        <div class="picinfo">
          <h3>露营</h3>
          <span>good</span> </div>
        </a></li>
    </ul>
  </div>
</article>

</body>
</html>