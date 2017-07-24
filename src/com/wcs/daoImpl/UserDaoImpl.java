package com.wcs.daoImpl;

import com.wcs.dao.UserDao;

public class UserDaoImpl implements UserDao {

	@Override
	public String findUser(String userName,String passWord) {
		
		if("admin".equalsIgnoreCase(userName)&&"admin".equalsIgnoreCase(passWord)){
			return "success";
		}else{
			return "login";
		}
	}

}
