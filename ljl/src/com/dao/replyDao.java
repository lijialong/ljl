package com.dao;

import com.entity.reply;
import com.util.DBconn;

public class replyDao {
	public void register(reply re) {
		DBconn.init();
		DBconn.addUpdDel("insert into r(rname,rem,rinfo) " +
				"values('"+re.getRname()+"','"+re.getRem()+"','"+re.getRinfo()+"')");
		DBconn.closeConn();
	}
}
