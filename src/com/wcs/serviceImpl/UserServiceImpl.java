package com.wcs.serviceImpl;

import com.wcs.dao.UserDao;
import com.wcs.service.UserService;

public class UserServiceImpl implements UserService{

	private UserDao userDao;
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public String login(String userName,String passWord) {
		
		//UserDao userDao = new UserDaoImpl();
		
//		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
//		UserDao userDao = (UserDao)applicationContext.getBean("userDao");
		
		String result = userDao.findUser(userName,passWord);
		
		return result;
	}
	
}
