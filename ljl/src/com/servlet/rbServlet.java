package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.blog;
import com.entity.rblog;
import com.dao.blogDao;
import com.dao.rbDao;
import com.dao.UserDaoImpl;

public class rbServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String bid=request.getParameter("bid");
		String rtime=request.getParameter("time");
		String rbinfo=request.getParameter("editor");
		String username=request.getParameter("username");
		String key=request.getParameter("key");
		UserDaoImpl ud=new UserDaoImpl();
		
		if(ud.login(username, key)){
			int uid=ud.lookid(username, key);
		//System.out.println(bid+rtime+rbinfo+uid);
		rblog rb=new rblog();
		rb.setBid(Integer.parseInt(bid));
		rb.setRtime(rtime);
		rb.setRbinfo(rbinfo);
		rb.setUid(uid);
		
		rbDao r=new rbDao();
		if(r.r(rb)){
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			out.print("<script>alert('评论成功');location.replace(document.referrer)</script>");
			out.flush();
			out.close();
			
		}else{
			PrintWriter out = response.getWriter();
			out.print("<script>alert('评论失败'); location.replace(document.referrer) </script>");
			out.flush();
			out.close();
		}
		}else{
			PrintWriter out = response.getWriter();
			out.print("<script>alert('评论失败'); location.replace(document.referrer) </script>");
			out.flush();
			out.close();
		}
	}
}
