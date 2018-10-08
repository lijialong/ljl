<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+"47.106.244.35"+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">
<base href="<%=basePath%>">
<title>社会。。。社会。。。</title>

<link rel="stylesheet" href="css/style.css">

<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>

</head>
<body>

<div class="cotn_principal">
  <div class="cont_centrar">
    <div class="cont_login">
      <div class="cont_info_log_sign_up">
        <div class="col_md_login">
          <div class="cont_ba_opcitiy">
            <h2>登&nbsp;录</h2>
            <!--  <p>Lorem ipsum dolor sit amet, consectetur.</p>-->
            <button class="btn_login" onClick="cambiar_login()">登&nbsp;录</button>
          </div>
        </div>
        <div class="col_md_sign_up">
          <div class="cont_ba_opcitiy">
            <h2>注&nbsp;册</h2>
            <!-- <p>Lorem ipsum dolor sit amet, consectetur.</p> -->
            <button class="btn_sign_up" onClick="cambiar_sign_up()">注&nbsp;册</button>
          </div>
        </div>
      </div>
      <div class="cont_back_info">
        <div class="cont_img_back_grey"> <img src="po.jpg" alt="" /> </div>
      </div>
      <div class="cont_forms" >
        <div class="cont_img_back_"> <img src="po.jpg" alt="" /> </div>
        <div class="cont_form_login"> <a href="#" onClick="ocultar_login_sign_up()" ><i class="material-icons">&#xE5C4;</i></a>
          <h2>登&nbsp;录</h2>
          <form action="DengluServlet"  method="post">
          <input type="text" placeholder="用户名" name="name"/>
          <input type="password" placeholder="密码" name="pwd"/>
          <button class="btn_login" type="submit">登&nbsp;录</button>
          </form>
        </div>
        <div class="cont_form_sign_up"> <a href="#" onClick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
          <h2>注&nbsp;册</h2>
          <form action="ZhuceServlet"method="post">
          <input type="text" placeholder="用户名" name="name"/>
          <input type="password" placeholder="密码" name="pwd"/>
          <div>
          选择性别:<input type="radio"name="sex"value="男"checked>男
	        <input type="radio"name="sex"value="女">女<br><br>
	   选择家乡:
	   <select name="home">
		   <option value="上海">上海</option>
		   <option value="北京" selected>北京</option>
		   <option value="纽约">纽约</option>
   		</select><br>
               填写个人信息:<br>
	   <textarea name="info" row="5"cols="30"></textarea><br>
	   <button class="btn_sign_up" type="submit">注&nbsp;册</button>
	   </form>
          </div>
          
       
        </div>
      </div>
    </div>
  </div>
</div>

<script src="js/index.js"></script>

</body>
</html>

