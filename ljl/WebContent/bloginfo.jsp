<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="q" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+"47.106.244.35"+":"+request.getServerPort()+path+"/";
%>
<%int ui=0;%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");String s=df.format(new Date());%>
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
<!-- <script type="text/javascript" src="ckeditor5/ckeditor.js"></script> -->

<script src="//cdn.ckeditor.com/4.4.5/standard/ckeditor.js"></script>
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
  <nav><div class="logo"><a href="/">Leif的个人博客</a></div>
    <h2 id="mnavh"><span class="navicon"></span></h2>
    <ul id="starlist">
      <li><a href="/blogServlet">网站首页</a></li>
      <li><a href="/share.jsp">我的相册</a></li>
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
<main>
  <div class="picsbox">
    <div class="piccontext">
      <h2> ${b.btitle} </h2>
      <div class="source">
        <div class="source_left"><span>作者id：${b.uid}</span> </div>
      </div>
    </div>
    <div class="pictext">
      <ul>
      	${b.binfo}
      </ul>
    </div>
   
   
	<div class="news_pl">
        <h2>文章评论</h2>
        
        <div class="gbko"> 
          <script src="/e/pl/more/?classid=77&amp;id=106&amp;num=20"></script>
          <q:forEach items="${review}" var="r">
          <div class="fb">
            <ul>
              <p class="fbtime"><span>${r.rtime}</span>作者id：${r.uid}</p>
              <p class="fbinfo">${r.rbinfo}</p>
            </ul>
          </div>
          </q:forEach>
          <script>
		  function CheckPl(obj)
		  {
		  if(obj.saytext.value=="")
		  {
		  alert("您没什么话要说吗？");
		  obj.saytext.focus();
		  return false;
		  }
		  return true;
		  }
		  </script>
          <form action="./rbServlet" method="post">
            <div id="plpost">
              <p class="saying">来说两句吧...</p>
              <p class="yname"><span>用户名:</span>
                <input name="username" type="text" class="inputText" id="username" value="" size="16">
              </p>
              <p class="yzm"><span>密码:</span>
                <input name="key" type="text" class="inputText" size="16">
              </p>
              <textarea name="editor" id="editor" cols="30" rows="10"></textarea>
              	<script type="text/javascript">
     				CKEDITOR.replace('editor');
   				</script>
   				<input type="hidden" name="time" value="<%=s%>">
   				<input type="hidden" name="bid" value="${b.bid}">
              <input name="imageField" type="submit" value="提交">
            </div>
          </form>
        </div>
      </div>
    </div>
    
    </div>
  </main>
</article>
<footer>
  <p>Design by <a href="http://47.106.244.35" target="_blank">leif</a> </p>
</footer>
<a href="#" class="cd-top">Top</a>
</body>
</html>