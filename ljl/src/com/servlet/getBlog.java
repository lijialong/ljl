package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.blogDao;
import com.entity.blog;
import com.dao.rbDao;
import com.entity.rblog;

public class getBlog extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {		
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String i=request.getParameter("id");
		blogDao ball=new blogDao();
		rbDao rb=new rbDao();
		List<rblog> r=rb.getrblog(i);
		blog b = ball.getblog(i);
		request.setAttribute("b", b);
		request.setAttribute("review",r);
		request.getRequestDispatcher("/bloginfo.jsp").forward(request, response);
	}
}
