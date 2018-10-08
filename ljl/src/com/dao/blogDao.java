package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.User;
import com.entity.blog;
import com.util.DBconn;

public class blogDao {
	public List<blog> getBlogAll() {
		List<blog> list = new ArrayList<blog>();
    	try {
		    DBconn.init();
			ResultSet rs = DBconn.selectSql("select * from blog");
			//ResultSet rsuname=DBconn.selectSql("select id,name from user");
			while(rs.next()){
				blog b=new blog();
				b.setBid(rs.getInt("bid"));
				b.setBtitle(rs.getString("btitle"));
				b.setUid(rs.getInt("uid"));
				b.setBinfo(rs.getString("binfo"));
				list.add(b);
			}
			DBconn.closeConn();
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public blog getblog(String i){
		blog b=new blog();		
		try {
			DBconn.init();
			ResultSet rs = DBconn.selectSql("select * from blog where bid="+i);
			while(rs.next()){
				b.setBid(rs.getInt("bid"));
				b.setBtitle(rs.getString("btitle"));
				b.setUid(rs.getInt("uid"));
				b.setBinfo(rs.getString("binfo"));
			}
			DBconn.closeConn();
			return b;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
	public boolean upblog(blog b) {
		boolean flag = false;
		DBconn.init();
		int i =DBconn.addUpdDel("insert into blog(btitle,uid,binfo) " +
				"values('"+b.getBtitle()+"','"+b.getUid()+"','"+b.getBinfo()+"')");
		if(i>0){
			flag = true;
		}
		DBconn.closeConn();
		return flag;
	}
}
