package com.wcs.login;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.opensymphony.xwork2.ActionSupport;
import com.wcs.service.UserService;
import com.wcs.serviceImpl.UserServiceImpl;

@SuppressWarnings("all")
public class UserAction extends ActionSupport{
	
	public String login(){
		String userName = ServletActionContext.getRequest().getParameter("userName");
		String passWord = ServletActionContext.getRequest().getParameter("passWord");
		String sss = "";
		//UserService userService = new UserServiceImpl();
		dssdfsdfsdfsdfsdfsdfsdf
//		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		ApplicationContext applicationContext = WebApplicationContextUtils.
				getRequiredWebApplicationContext(ServletActionContext.getServletContext());
		UserService userService = (UserService) applicationContext.getBean("userService");
		String ss = "123456";
		String dd = "2222BA";
		String result = userService.login(userName,passWord);
		
		return result;
	}
}
