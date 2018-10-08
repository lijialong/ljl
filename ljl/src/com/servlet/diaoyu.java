package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.UserDao;
import com.dao.UserDaoImpl;
import com.entity.User;

public class diaoyu extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String name = request.getParameter("name"); //获取jsp页面传过来的参数
		String pwd = request.getParameter("pwd");
		String sex = "111";
		String home = "222";
		String info = "333";
		
		User user = new User(); //实例化一个对象，组装属性
		user.setName(name);
		user.setPwd(pwd);
		user.setSex(sex);
		user.setHome(home);
		user.setInfo(info);
		UserDao ud = new UserDaoImpl();
		
		if(name.equals("666")&&pwd.equals("666")){
			request.setAttribute("username", name);  //向request域中放置参数
			//request.setAttribute("xiaoxi", "注册成功");
			request.getRequestDispatcher("/hello.jsp").forward(request, response);  //转发到登录页面
		}else{
			ud.register(user);
			response.sendRedirect("http://www.tfswufe.edu.cn");//重定向到首页
		}
		
		
	}
}
