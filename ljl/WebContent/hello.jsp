<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+"47.106.244.35"+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<!-- META TAGS -->
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- STYLES -->
<link href="./cssi/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="./cssi/fullpage.css" rel="stylesheet" type="text/css">
<link href="./cssi/style.css" rel="stylesheet" type="text/css">
<link href="./cssi/custom.css" rel="stylesheet" type="text/css">
<style type="text/css">
.div {
    display: inline-block;
    padding: .3em .5em;
    background-image: linear-gradient(#ddd, #bbb);
    border: 1px solid rgba(0,0,0,.2);
    border-radius: .3em;
    box-shadow: 0 1px white inset;
    text-align: center;
    text-shadow: 0 1px 1px black;
    color:white;
    font-weight: bold;
}
.div:active{
    box-shadow: .05em .1em .2em rgba(0,0,0,.6) inset;
    border-color: rgba(0,0,0,.3);
    background: #bbb;
}
</style>
<!-- SITE TITLE -->
<title>Leif's Home</title>
</head>
<body>

<!-- AUDIO PLAYER -->
<audio class="audio-player" autoplay loop>
	<source src="./audio/song.mp3" type="audio/mpeg">
</audio>

<!-- BACKGROUND CONTAINER -->
<div class="bg-container snowy">
	<!-- GLASS BALL -->
	<div class="glass-ball rotate"></div>
	<!-- TOP LIGHT -->
	<div class="top-light"></div>
	<!-- PAGE CONTENT -->
	<div class="page-content">
		<div class="fullpage">
			<!-- HOME SECTION -->
			<div id="home" class="section active">
				<!-- TITLE -->
				<h1 class="snow-text">Pedestrian</h1>
				<!-- COUNTER -->
				<br>
				<a href="./blogServlet">
				<div class="div">进入我的博客</div>
				</a>
				<a href="./leif.jsp">
				<div class="div">登录后台</div>
				</a>
			</div>
			<!-- INFO SECTION -->
			<div id="info" class="section">
				<div class="container">
					<!-- INFO TEXT -->
					<div class="shadow-box">
						<h2>I'm Leif</h2>
						<p>欢迎联系我</p>
					</div>
					<!-- SOCIAL ICONS -->
					<ul class="social-icons">
						<li><a href="http://wpa.qq.com/msgrd?V=3&uin=919820268&Site=QQ&Menu=yes" title="qq"><i class="fa fa-qq" aria-hidden="true"></i></a></li>
						<li><a href="http://weibo.com/2923695723/profile?rightmod=1&wvr=6&mod=personinfo&is_all=1" title="weibo"><i class="fa fa-weibo" aria-hidden="true"></i></a></li>
					</ul>
				</div>
			</div>
			<!-- CONTACT SECTION -->
			<div id="contact" class="section">
				<div class="container">
					<!-- CONTACT TEXT -->
					<div class="shadow-box">
						<h3>在线问题反馈</h3>
						<p>请完整填写以下内容</p>
					</div>
					<!-- CONTACT FORM -->
					<div class="contact">
						<div id="contact-result">
							<!-- CONTACT RESULT HOLDER -->
						</div>
						<form class="contact-form" action="reServelet" method="POST">
							<div class="form-group">
								<input name="name" type="text" class="form-control" value="" placeholder="姓名">
							</div>
							<div class="form-group">
								<input name="em" type="text" class="form-control" value="" placeholder="邮箱">
							</div>
							<div class="form-group">
								<textarea name="info" class="form-control" placeholder="反馈内容"></textarea>
							</div>
							<div class="form-group">
								<input class="btn-submit" type="submit" value="发送">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- SCRIPTS  -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/countdown.min.js"></script>
<script type="text/javascript" src="js/jquery.fullpage.min.js"></script>
<script type="text/javascript" src="js/three.canvas.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/custom.js"></script>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/countdown.min.js"></script>
<script type="text/javascript" src="js/jquery.fullpage.min.js"></script>
<script type="text/javascript" src="js/three.canvas.js"></script>
<script type="text/javascript" src="js/snowy.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/custom.js"></script>


</body>
</html>
