package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.blogDao;
import com.dao.UserDaoImpl;
import com.entity.User;
import com.entity.blog;

public class upblog extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String name = request.getParameter("name"); //获取jsp页面传过来的参数
		int id = Integer.parseInt(request.getParameter("id"));
		String info = request.getParameter("message");
		
		blog b=new blog();
		b.setBtitle(name);
		b.setUid(id);
		b.setBinfo(info);
		
		blogDao bd=new blogDao();
		
		if(bd.upblog(b)){
			//request.setAttribute("username", name);  //向request域中放置参数
			//request.setAttribute("xiaoxi", "注册成功");
			request.getRequestDispatcher("/blogServlet").forward(request, response);  //转发到登录页面
		}else{
			
			response.sendRedirect("/leif.jsp");//重定向到首页
		}
	}
}
