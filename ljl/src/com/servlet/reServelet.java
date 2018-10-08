package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.replyDao;
import com.entity.reply;

public class reServelet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String rname = request.getParameter("name"); //获取jsp页面传过来的参数
		String rem = request.getParameter("em");
		String rinfo = request.getParameter("info");
		
		reply r=new reply();
		r.setRname(rname);
		r.setRem(rem);
		r.setRinfo(rinfo);
		
		replyDao rd=new replyDao();
		rd.register(r);
		request.getRequestDispatcher("/hello.jsp").forward(request, response);  //转发到登录页面
//		if(rd.register(r)){
//			//request.setAttribute("rname", rname);  //向request域中放置参数
//			//request.setAttribute("xiaoxi", "注册成功");
//			response.setHeader("refresh", "1");
//			//response.sendRedirect("/hello.jsp");//重定向到首页
//		}else{
//			
//			response.sendRedirect("/hello.jsp");//重定向到首页
//		}
	}
}
