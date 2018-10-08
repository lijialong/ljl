package com.dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.User;
import com.entity.rblog;
import com.util.DBconn;
public class rbDao {
	public List<rblog> getrblog(String i){
		List<rblog> list = new ArrayList<rblog>();
		try {
		    DBconn.init();
			ResultSet rs = DBconn.selectSql("select * from rb where bid="+i);
			while(rs.next()){
				rblog rb = new rblog();
				rb.setRbid(rs.getInt("rbid"));
				rb.setBid(rs.getInt("bid"));
				rb.setUid(rs.getInt("uid"));
				rb.setRtime(rs.getString("rtime"));
				rb.setRbinfo(rs.getString("rbinfo"));
				list.add(rb);
			}
			DBconn.closeConn();
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public boolean r(rblog rb) {
		boolean flag = false;
		DBconn.init();
		int i =DBconn.addUpdDel("insert into rb(bid,rtime,rbinfo,uid) " +
				"values('"+rb.getBid()+"','"+rb.getRtime()+"','"+rb.getRbinfo()+"','"+rb.getUid()+"')");
		if(i>0){
			flag = true;
		}
		DBconn.closeConn();
		return flag;
	}
}
