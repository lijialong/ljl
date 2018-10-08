<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%> 
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
<link href="css/infopic.css" rel="stylesheet">
<link href="css/m.css" rel="stylesheet">
<style type="text/css">
.smart-green {
margin-left:auto;
margin-right:auto;

max-width: 500px;
background: #F8F8F8;
padding: 30px 30px 20px 30px;
font: 12px Arial, Helvetica, sans-serif;
color: #666;
border-radius: 5px;
-webkit-border-radius: 5px;
-moz-border-radius: 5px;
}
.smart-green h1 {
font: 24px "Trebuchet MS", Arial, Helvetica, sans-serif;
padding: 20px 0px 20px 40px;
display: block;
margin: -30px -30px 10px -30px;
color: #FFF;
background: #9DC45F;
text-shadow: 1px 1px 1px #949494;
border-radius: 5px 5px 0px 0px;
-webkit-border-radius: 5px 5px 0px 0px;
-moz-border-radius: 5px 5px 0px 0px;
border-bottom:1px solid #89AF4C;

}
.smart-green h1>span {
display: block;
font-size: 11px;
color: #FFF;
}

.smart-green label {
display: block;
margin: 0px 0px 5px;
}
.smart-green label>span {
float: left;
margin-top: 10px;
color: #5E5E5E;
}
.smart-green input[type="text"], .smart-green input[type="email"], .smart-green textarea, .smart-green select {
color: #555;
height: 30px;
line-height:15px;
width: 100%;
padding: 0px 0px 0px 10px;
margin-top: 2px;
border: 1px solid #E5E5E5;
background: #FBFBFB;
outline: 0;
-webkit-box-shadow: inset 1px 1px 2px rgba(238, 238, 238, 0.2);
box-shadow: inset 1px 1px 2px rgba(238, 238, 238, 0.2);
font: normal 14px/14px Arial, Helvetica, sans-serif;
}
.smart-green textarea{
height:100px;
padding-top: 10px;
}
.smart-green select {
background: url('down-arrow.png') no-repeat right, -moz-linear-gradient(top, #FBFBFB 0%, #E9E9E9 100%);
background: url('down-arrow.png') no-repeat right, -webkit-gradient(linear, left top, left bottom, color-stop(0%,#FBFBFB), color-stop(100%,#E9E9E9));
appearance:none;
-webkit-appearance:none;
-moz-appearance: none;
text-indent: 0.01px;
text-overflow: '';
width:100%;
height:30px;
}
.smart-green .button {
background-color: #9DC45F;
border-radius: 5px;
-webkit-border-radius: 5px;
-moz-border-border-radius: 5px;
border: none;
padding: 10px 25px 10px 25px;
color: #FFF;
text-shadow: 1px 1px 1px #949494;
}
.smart-green .button:hover {
background-color:#80A24A;
}
</style>

<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/piccontent.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/hc-sticky.js"></script>
<script type="text/javascript" src="js/comm.js"></script>
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
</head>
<body>
<header class="header-navigation" id="header">
  <nav><div class="logo"><a href="/">${xiaoxi}的个人博客</a></div>
    <h2 id="mnavh"><span class="navicon"></span></h2>
    <ul id="starlist">
      <li><a href="/blogServlet">网站首页</a></li>
      <li><a href="#">博客管理</a></li>
    </ul>
</nav>
</header>
<article>
	<aside class="l_box">
      <div class="about_me">
        <h2>欢迎用户${xiaoxi}</h2>
      </div>
  </aside>
<main>	
    <form action="upblog?id=${id}" method="post" class="smart-green">
    <h1>写博客
    <span>用户：${xiaoxi}</span>
    </h1>
    <label>
    <span>标题：</span>
    <input id="name" type="text" name="name" placeholder="你的标题" />
    </label>


    <label>
    <span>你的内容：</span>
    <textarea id="message" name="message" placeholder="你的内容"></textarea>
    </label>
 
    <span>&nbsp;</span>
    <input type="submit" class="button" value="发送" />

    </form>
	
</main>
</article>
<footer>
  <p>Design by <a href="http://47.106.244.35" target="_blank">leif</a> </p>
</footer>
<a href="#" class="cd-top">Top</a>
</body>
</html>