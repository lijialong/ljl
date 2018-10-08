package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.blogDao;
import com.entity.blog;

public class blogServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		blogDao ball=new blogDao();
		List<blog> blogAll = ball.getBlogAll();
		request.setAttribute("blogAll", blogAll);
		request.getRequestDispatcher("/blog.jsp").forward(request, response);
	}
}
